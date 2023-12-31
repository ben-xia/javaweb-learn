package com.ben.java.core.json.jackson;

import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.core.json.PackageVersion;
import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.core.type.TypeReference;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MyObjectCodec extends ObjectCodec {
    @Override
    public Version version() {
        return PackageVersion.VERSION;
    }

    @Override
    public <T> T readValue(JsonParser jsonParser, Class<T> aClass) throws IOException {
        // {"name":"YourBatman","age":18,"dog":{"name":"旺财","color":"WHITE"},"hobbies":["篮球","football"]}
        // 使用JsonParser读取此json串，并且封装到valueType类型的JavaBean里
        // 重点说明：次数实例理应通过valueType来构造，且赋值方面大量用到反射。
        // 但本文仅想说明本质，因此不相关的步骤不在此处列出，各位知道便可
        Person person = new Person();

        while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            String fieldname = jsonParser.getCurrentName();
            if ("name".equals(fieldname)) {
                person.setName(jsonParser.nextTextValue());
            } else if ("age".equals(fieldname)) {
                person.setAge(jsonParser.nextIntValue(0));
            } else if ("dog".equals(fieldname)) {
                jsonParser.nextToken();
                // 构造一个dog实例（同样的，实际场景是利用反射构造的哦）
                Dog dog = new Dog();
                person.setDog(dog);

                while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
                    String dogFieldName = jsonParser.getCurrentName();
                    if ("name".equals(dogFieldName)) {
                        dog.setName(jsonParser.nextTextValue());
                    } else if ("color".equals(dogFieldName)) {
//                        dog.setColor(Color.valueOf(jsonParser.nextTextValue()));
                        dog.setColor(jsonParser.nextTextValue());
                    }
                }
            } else if ("hobbies".equals(fieldname)) {
                jsonParser.nextToken();

                List<String> hobbies = new ArrayList<>();
                person.setHobbies(hobbies);
                while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                    // hobbies.add(jsonParser.nextTextValue()); // 请注意:此处不能用next哦~
                    hobbies.add(jsonParser.getText());
                }
            }
        }
        return (T) person;
    }

    @Override
    public <T> T readValue(JsonParser jsonParser, TypeReference<T> typeReference) throws IOException {
        return null;
    }


    @Override
    public <T> T readValue(JsonParser jsonParser, ResolvedType resolvedType) throws IOException {
        return null;
    }

    @Override
    public <T> Iterator<T> readValues(JsonParser jsonParser, Class<T> aClass) throws IOException {
        return null;
    }

    @Override
    public <T> Iterator<T> readValues(JsonParser jsonParser, TypeReference<T> typeReference) throws IOException {
        return null;
    }


    @Override
    public <T> Iterator<T> readValues(JsonParser jsonParser, ResolvedType resolvedType) throws IOException {
        return null;
    }

    @Override
    public void writeValue(JsonGenerator jsonGenerator, Object o) throws IOException {

    }

    @Override
    public <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException {
        return null;
    }

    @Override
    public void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) throws IOException {

    }

    @Override
    public TreeNode createObjectNode() {
        return null;
    }

    @Override
    public TreeNode createArrayNode() {
        return null;
    }

    @Override
    public JsonParser treeAsTokens(TreeNode treeNode) {
        return null;
    }

    @Override
    public <T> T treeToValue(TreeNode treeNode, Class<T> aClass) throws JsonProcessingException {
        return null;
    }
}
