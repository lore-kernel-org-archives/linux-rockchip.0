Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AD74C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:28:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAA47613BD
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:28:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAA47613BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1yLc2kevdgz3W4ChRZVgsMpfOsx7Mi0PQUE/tdz4u6U=; b=LY1JBhLqY/Bj15t4ctz2vodoE7
	9joKqocLD1e4jtTQCcuCFnd7dwNB6jm7YWf5ZTDTNz/SKpxRR7VMy+NO2/w9yZdpaSRr59pybH6HV
	eOCzYGo83nGnvonkGLTdR0afsq2im6zkI0kjacFsYSsbhx4HDdGsgFDIRzyUlmFSype+14eKEjFfa
	Ybsty/YbloJp66HY9dBHQJ5rGW9ItKHC4CX05IEGykNCEmwKcs6KvFi7FNRiumAejhY4lZCsRYTjW
	yg25QkXvxA7TwaTPaAyRyvyoi1sWRogElhhUc09f0ip+8QNzFEfEAAdmcm5TOUa9nCWHl8tloe6/K
	afb1RPLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm2wX-000pFw-IJ; Wed, 26 May 2021 23:28:05 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lm2wU-000pE6-Ff; Wed, 26 May 2021 23:28:04 +0000
Received: by mail-ej1-x62c.google.com with SMTP id s22so5059237ejv.12;
 Wed, 26 May 2021 16:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4EeJCBha5dFMScflX6CEjsoHdXByNHW6tUeVOLomuKU=;
 b=Nz0/7VXjE7tPbYFTrPLUmiPq9EPvsLJJ9+D+ggOLvtnCSavC70KfhXdEnmv83LbnjP
 +jBpMd6U1gI5W9MaCQO5/jaq+g/bOUJ5uDMiT3VoBh8cUV96+5dACBAtiZvRphuVk1WU
 /DSL0WWOj+KfbtPUU2hruECvjw1WEh8+wK1lVpG2o0S8azMU2XoSGOh40nU/8UHoYLK6
 upgfHnWPLpuzfJbiDgB+5HfzuAzkhRkM+dnOnTJ+xdgZ0WiQH4DGVnG69R4sGNx44xfO
 x09UA83qj6eiJcl7BPjevhYmN4BNripGqD0H1JGy9t582EEKyXnOFCb/X0G9udjxqdFy
 q0rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4EeJCBha5dFMScflX6CEjsoHdXByNHW6tUeVOLomuKU=;
 b=BrA4FKXNbJ9T+ta5wSTKrzIOnopvd3blNat66TowsxDs7USwkzeuvcJ/guVRqX+2OT
 6c/AHo6lPbYV4kYFOC2Zffzdn0JolhP+aeoTjCuQ1Bd6ppg8/TVsDguiD3fBvYBxPugB
 fr5K7NerSlVa9nFUY3pw1FEMCZfhtrREez2MNWUxtoKvCT6qkv917CMYsZ9GRFkgUOrq
 I1oaXV2MU7s9Ian9WUsGHfgEwwEKULcQlDFB8A1IvHbnAo2/8ebxBhWNIZn6I07LxZWV
 Y+tYIP4+cQHgSL96b0oDS42wfV4ivkiWKGrTZkwYGEK4i7HyO4lFGMIlnChPf82VYcsg
 Lhrw==
X-Gm-Message-State: AOAM533dqQxP00q6tfCn792siGyYS1/7Dje9XChajuKPsuckEhsEBn0n
 HzLY6j0qo6SP2iF78S/djNsh9tdt4S9m
X-Google-Smtp-Source: ABdhPJw4YaTREGs8ooQ14ALjQWeNSAltV66oWzBjzmGD+DMf+860UZ5GCUogoksdjCn5WHzsYuqeiw==
X-Received: by 2002:a17:906:1305:: with SMTP id
 w5mr731708ejb.404.1622071680848; 
 Wed, 26 May 2021 16:28:00 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:e00:bdfb:c34e:3af8:76da?
 ([2a02:810b:f40:e00:bdfb:c34e:3af8:76da])
 by smtp.gmail.com with ESMTPSA id h9sm152648edr.10.2021.05.26.16.27.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 May 2021 16:28:00 -0700 (PDT)
Subject: Re: [PATCH 05/10] media: hantro: add support for Rockchip RK3036
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-staging@lists.linux.dev,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210525152225.154302-6-knaerzche@gmail.com>
 <b65236f3b8bbf35411b536df8b260d9f8a9dbd80.camel@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <2640d65e-772b-6af4-f4be-8ed090693c22@gmail.com>
Date: Thu, 27 May 2021 01:27:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <b65236f3b8bbf35411b536df8b260d9f8a9dbd80.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_162802_564523_ED7481A8 
X-CRM114-Status: GOOD (  28.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRXplcXVpZWwsCgpBbSAyNi4wNS4yMSB1bSAxMjoyOCBzY2hyaWViIEV6ZXF1aWVsIEdhcmNp
YToKPiBIaSBBbGV4LAo+Cj4gVGhhbmtzIGEgbG90IGZvciB0aGUgcGF0Y2guCj4KPiBPbiBUdWUs
IDIwMjEtMDUtMjUgYXQgMTc6MjIgKzAyMDAsIEFsZXggQmVlIHdyb3RlOgo+PiBSSzMwMzYncyBW
UFUgSVAgYmxvY2sgaXMgdGhlIHNhbWUgYXMgUkszMjg4IGhhcywgZXhjZXB0IHRoYXQgaXQgZG9l
c24ndAo+PiBoYXZlIGFuIGVuY29kZXIsIGRlY29kaW5nIGlzIHN1cHBvcnRlZCB1cCB0byAxOTIw
eDEwODggb25seSBhbmQgdGhlIGF4aQo+PiBjbG9jayBjYW4gYmUgc2V0IHRvIDMwMCBNSHogbWF4
Lgo+Pgo+PiBBZGQgYSBuZXcgUkszMDM2IHZhcmlhbnQgd2hpY2ggcmVmbGVjdCB0aGlzIGRpZmZl
cmVuY2VzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNv
bT4KPj4gLS0tCj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5j
wqDCoMKgIHzCoCAxICsKPj4gIMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9f
aHcuaMKgwqDCoMKgIHzCoCAxICsKPj4gIMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9y
azMyODhfdnB1X2h3LmMgfCA0OSArKysrKysrKysrKysrKysrKysrKwo+PiAgwqAzIGZpbGVzIGNo
YW5nZWQsIDUxIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fZHJ2LmMKPj4gaW5kZXggMzhlYTdiMjQwMzZlLi40ZjNjMDhlODViYjggMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+IEBAIC00OTAs
NiArNDkwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfaGFudHJvX21h
dGNoW10gPSB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azMzMjgtdnB1IiwgLmRhdGEgPSAmcmszMzI4X3ZwdV92YXJpYW50LCB9LAo+PiAgwqDCoMKgwqDC
oMKgwqDCoHsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4LXZwdSIsIC5kYXRhID0gJnJr
MzI4OF92cHVfdmFyaWFudCwgfSwKPj4gIMKgwqDCoMKgwqDCoMKgwqB7IC5jb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzA2Ni12cHUiLCAuZGF0YSA9ICZyazMwNjZfdnB1X3ZhcmlhbnQsIH0sCj4+
ICvCoMKgwqDCoMKgwqDCoHsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMDM2LXZwdSIsIC5k
YXRhID0gJnJrMzAzNl92cHVfdmFyaWFudCwgfSwKPj4gIMKgI2VuZGlmCj4+ICDCoCNpZmRlZiBD
T05GSUdfVklERU9fSEFOVFJPX0lNWDhNCj4+ICDCoMKgwqDCoMKgwqDCoMKgeyAuY29tcGF0aWJs
ZSA9ICJueHAsaW14OG1xLXZwdSIsIC5kYXRhID0gJmlteDhtcV92cHVfdmFyaWFudCwgfSwKPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmggYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19ody5oCj4+IGluZGV4IGRlMmJjMzY3
YTE1YS4uZDhkNmIwZDNjM2IzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19ody5oCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2h3LmgKPj4gQEAgLTE2NCw2ICsxNjQsNyBAQCBleHRlcm4gY29uc3Qgc3RydWN0IGhh
bnRyb192YXJpYW50IHJrMzM5OV92cHVfdmFyaWFudDsKPj4gIMKgZXh0ZXJuIGNvbnN0IHN0cnVj
dCBoYW50cm9fdmFyaWFudCByazMzMjhfdnB1X3ZhcmlhbnQ7Cj4+ICDCoGV4dGVybiBjb25zdCBz
dHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcmszMjg4X3ZwdV92YXJpYW50Owo+PiAgwqBleHRlcm4gY29u
c3Qgc3RydWN0IGhhbnRyb192YXJpYW50IHJrMzA2Nl92cHVfdmFyaWFudDsKPj4gK2V4dGVybiBj
b25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcmszMDM2X3ZwdV92YXJpYW50Owo+PiAgwqBleHRl
cm4gY29uc3Qgc3RydWN0IGhhbnRyb192YXJpYW50IGlteDhtcV92cHVfdmFyaWFudDsKPj4gIMKg
ZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBzYW1hNWQ0X3ZkZWNfdmFyaWFudDsK
Pj4gICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vcmszMjg4
X3ZwdV9ody5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMK
Pj4gaW5kZXggMjk4MDVjNGJkOTJmLi5jNDY4NGRmNGUwMTIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vcmszMjg4X3ZwdV9ody5jCj4+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vcmszMjg4X3ZwdV9ody5jCj4+IEBAIC0xNzQsNiArMTc0LDEz
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCByazMyODhfdmVwdV9pcnEoaW50IGlycSwgdm9pZCAqZGV2
X2lkKQo+PiAgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBJUlFfSEFORExFRDsKPj4gIMKgfQo+PiAg
IAo+PiArc3RhdGljIGludCByazMwMzZfdnB1X2h3X2luaXQoc3RydWN0IGhhbnRyb19kZXYgKnZw
dSkKPj4gK3sKPj4gK8KgwqDCoMKgwqDCoMKgLyogQnVtcCBBQ0xLcyB0byBtYXguIHBvc3NpYmxl
IGZyZXEuIHRvIGltcHJvdmUgcGVyZm9ybWFuY2UuICovCj4+ICvCoMKgwqDCoMKgwqDCoGNsa19z
ZXRfcmF0ZSh2cHUtPmNsb2Nrc1swXS5jbGssIFJLMzA2Nl9BQ0xLX01BWF9GUkVRKTsKPj4gK8Kg
wqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gIMKgc3RhdGljIGludCByazMwNjZf
dnB1X2h3X2luaXQoc3RydWN0IGhhbnRyb19kZXYgKnZwdSkKPj4gIMKgewo+PiAgwqDCoMKgwqDC
oMKgwqDCoC8qIEJ1bXAgQUNMS3MgdG8gbWF4LiBwb3NzaWJsZSBmcmVxLiB0byBpbXByb3ZlIHBl
cmZvcm1hbmNlLiAqLwo+PiBAQCAtMjA5LDYgKzIxNiwyNyBAQCBzdGF0aWMgdm9pZCByazMyODhf
dnB1X2VuY19yZXNldChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+PiAgwqAvKgo+PiAgwqAgKiBT
dXBwb3J0ZWQgY29kZWMgb3BzLgo+PiAgwqAgKi8KPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGFu
dHJvX2NvZGVjX29wcyByazMwMzZfdnB1X2NvZGVjX29wc1tdID0gewo+PiArwqDCoMKgwqDCoMKg
wqBbSEFOVFJPX01PREVfSDI2NF9ERUNdID0gewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgLnJ1biA9IGhhbnRyb19nMV9oMjY0X2RlY19ydW4sCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAucmVzZXQgPSBoYW50cm9fZzFfcmVzZXQsCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAuaW5pdCA9IGhhbnRyb19oMjY0X2RlY19pbml0LAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmV4aXQgPSBoYW50cm9faDI2NF9kZWNfZXhpdCwKPj4g
K8KgwqDCoMKgwqDCoMKgfSwKPj4gK8KgwqDCoMKgwqDCoMKgW0hBTlRST19NT0RFX01QRUcyX0RF
Q10gPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAucnVuID0gaGFudHJvX2cx
X21wZWcyX2RlY19ydW4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAucmVzZXQg
PSBoYW50cm9fZzFfcmVzZXQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAuaW5p
dCA9IGhhbnRyb19tcGVnMl9kZWNfaW5pdCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoC5leGl0ID0gaGFudHJvX21wZWcyX2RlY19leGl0LAo+PiArwqDCoMKgwqDCoMKgwqB9LAo+
PiArwqDCoMKgwqDCoMKgwqBbSEFOVFJPX01PREVfVlA4X0RFQ10gPSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAucnVuID0gaGFudHJvX2cxX3ZwOF9kZWNfcnVuLAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLnJlc2V0ID0gaGFudHJvX2cxX3Jlc2V0LAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmluaXQgPSBoYW50cm9fdnA4X2RlY19pbml0
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLmV4aXQgPSBoYW50cm9fdnA4X2Rl
Y19leGl0LAo+PiArwqDCoMKgwqDCoMKgwqB9LAo+PiArfTsKPj4gKwo+PiAgwqBzdGF0aWMgY29u
c3Qgc3RydWN0IGhhbnRyb19jb2RlY19vcHMgcmszMDY2X3ZwdV9jb2RlY19vcHNbXSA9IHsKPj4g
IMKgwqDCoMKgwqDCoMKgwqBbSEFOVFJPX01PREVfSlBFR19FTkNdID0gewo+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAucnVuID0gaGFudHJvX2gxX2pwZWdfZW5jX3J1biwKPj4g
QEAgLTI2OSw2ICsyOTcsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY29kZWNfb3Bz
IHJrMzI4OF92cHVfY29kZWNfb3BzW10gPSB7Cj4+ICDCoCAqIFZQVSB2YXJpYW50Lgo+PiAgwqAg
Ki8KPj4gICAKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2lycSByazMwMzZfaXJxc1td
ID0gewo+PiArwqDCoMKgwqDCoMKgwqB7ICJ2ZHB1IiwgaGFudHJvX2cxX2lycSB9LAo+PiArfTsK
Pj4gKwo+PiAgwqBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19pcnEgcmszMjg4X2lycXNbXSA9
IHsKPj4gIMKgwqDCoMKgwqDCoMKgwqB7ICJ2ZXB1IiwgcmszMjg4X3ZlcHVfaXJxIH0sCj4+ICDC
oMKgwqDCoMKgwqDCoMKgeyAidmRwdSIsIGhhbnRyb19nMV9pcnEgfSwKPj4gQEAgLTI4Myw2ICsz
MTUsMjMgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCByazMyODhfY2xrX25hbWVzW10gPSB7
Cj4+ICDCoMKgwqDCoMKgwqDCoMKgImFjbGsiLCAiaGNsayIKPj4gIMKgfTsKPj4gICAKPj4gK2Nv
bnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCByazMwMzZfdnB1X3ZhcmlhbnQgPSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoC5kZWNfb2Zmc2V0ID0gMHg0MDAsCj4gSWYgaXQgZG9lc24ndCBoYXZlIGFuIGVu
Y29kZXIsIHRoZW4geW91IHNob3VsZCBqdXN0Cj4gdXNlIGRlY19vZmZzZXQgPSAweDAuCj4KPiBU
aGFua3MsCj4gRXplcXVpZWwKPgpUaGF0IHdvdWxkIG1lYW4sIEknZCBoYXZlIHRvIGFkYXB0IHRo
ZSByZWdpc3RlciBvZmZzZXQgaW4gdGhlIGRldmljZSAKdHJlZSAtIEknZCBwcmVmZXIgdG8ga2Vl
cCBpdCBpbiBsaW5lIHdpdGggdGhlIFRSTS4gVW5sZXNzIHlvdSBpbnNpc3QsIApJJ2QgbGlrZSB0
byBrZWVwIGl0IHRoaXMgd2F5IChJdCdzICwgYnR3LCB0aGUgdmVyeSBzYW1lIGZvciBSSzMzMjgp
LgoKQWxleAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
