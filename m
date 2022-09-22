Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89EDFC6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FR7s/TRMtO4X+4cL12Tx2GhvKsJEF2gENVtktBfqdU=; b=MCT8ms04VHfkl/
	MLT3fcLGWnDjfVjprzGNBSFxIWv76zHCl5t/vUzu/nZujFonw/LH/WLw+4yqbExJc4ZjG51Uc6/5j
	SbWyN/VR0C38ILc8b2qLntP7oRQpQY7vnlmUZREXmaSuUJzm23HzK/CVMwL66c3DKeLg8wFf69MQq
	75BgIf/nSVXIZirBEva7Psknnjzm/NSy6dEU3Bwl9zjeXQA3dC3/mtRVmzBqzMErAN9cLwkv8ZSkg
	5xST5Y/kcXxFhtzz6CdAkiD6ixDGtZVsDfDyp9k4cPCqKErMhUs33L4r3IMRuluu74DixDVbnJ7au
	t5TaT59GOTfQ5qpM/3JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLW6-00FQ8H-Gc; Thu, 22 Sep 2022 12:41:22 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLW4-00FQ4W-Am
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 12:41:21 +0000
Received: by mail-lj1-x232.google.com with SMTP id c7so10798432ljm.12
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Sep 2022 05:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jrS+VsYT+b+f3LmzRlJ19xxnrwcs/yWfI/hqoqYNbQw=;
        b=htHVzKp7+2NRaKk+H4Yw+4cB7Y6HgiUXZ47OoZUYOISeETfL/BPcckdCUSgO4KJPg7
         XRPqXRcJqXvgkLRV8PfuVxPSAQFIG4N8fI/q2SuDRl9BLHLCHgASdLbeQ+I7SIHfhhjq
         vcQJkps1D4Pr7eS4ZcYWoerMQyn7A0MbPXSN5bTaauSuS5hw+FEOwSK1x1Rcq73hthtd
         hhDUUG0UzSmXNvIUeSs87GNuEjfI/M2aAVfzW2hgPqIjsOvnMoicYMVUR7/lTmFnsjGP
         OhnFp/LvkJSh35TVVSZ2Z7VFQm6G7jyC7SUJpwGdtEvwsL4T5qdjCasZkB12Zul1WmAH
         mZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jrS+VsYT+b+f3LmzRlJ19xxnrwcs/yWfI/hqoqYNbQw=;
        b=XK19qdCEiK5MwLFqOI7QETh5cqXU+eqL1dm6sWJOlPFPEspcWfH1KdjXVv1L51f8kk
         9oOo67EgW4nDDFBtC671YokFUTBB6Tzi1yyU+XfCykJVxgFXP1oQv1Nb+tRkiFTTXEL0
         Boo8+/+ZF/OX5yersQ28ckAgIcbmiefMR1NdlJZuS4i22lVy5vusftk6pyvvF41puHjH
         77/9Ut2FeVyy2onUjxxFcmTkr2FzbRntw/F2kZ2UxITas+Gn1oADGZ/MMLSU1U47xozE
         F8o0NOtbn2AmnLV8jg08gjtdsj3kb4DcAMP5teuTSs5oJTH+fmUEJxFkJdwLGV+5keAQ
         fMgQ==
X-Gm-Message-State: ACrzQf3VzEsOY9znc2V3K5PDP9Ukxb3crbD8tQ6pZLfoaIncJXlcHqUZ
	RXlqi06IU2d8UuQpmRAUHpzjqw==
X-Google-Smtp-Source: AMsMyM4yed3T5zj8DayAtkpGWLnjuWRP/U3wHhYqSHfnfOxwvo9+6hGXfoOo1lrZThdvV7IYh9GUuw==
X-Received: by 2002:a2e:9653:0:b0:26a:c786:a104 with SMTP id z19-20020a2e9653000000b0026ac786a104mr968137ljh.183.1663850475610;
        Thu, 22 Sep 2022 05:41:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s13-20020a05651c048d00b0026ac8c94022sm889813ljc.119.2022.09.22.05.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:41:15 -0700 (PDT)
Message-ID: <233d4a3d-9dc1-cdd2-a718-4843e5fd23d7@linaro.org>
Date: Thu, 22 Sep 2022 14:41:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_dt-bindings=3a_arm=3a_rockchip=3a_a?=
 =?UTF-8?Q?dd_Theobroma_Systems_PX30-=c2=b5Q7_=28Ringneck=29_with_Haikou?=
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 dmitry.torokhov@gmail.com, klaus.goger@theobroma-systems.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-4-foss+kernel@0leil.net>
 <6e6c1ef6-b15e-ea50-a627-9dc56aa4b806@linaro.org>
In-Reply-To: <6e6c1ef6-b15e-ea50-a627-9dc56aa4b806@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054120_389444_4770E722 
X-CRM114-Status: GOOD (  10.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjIvMDkvMjAyMiAxNDo0MCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyMi8w
OS8yMDIyIDEyOjEyLCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4gRnJvbTogUXVlbnRpbiBTY2h1
bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4KPj4gQWRkIGVudHJ5
IGZvciB0aGUgVGhlb2Jyb21hIFN5c3RlbXMgUFgzMC3CtVE3IChSaW5nbmVjaykgd2l0aCBIYWlr
b3UKPj4gZGV2a2l0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRp
bi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+PiAtLS0KPj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDUgKysrKysKPj4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiBpbmRleCA3ODExYmE2NDE0
OWMuLmYyYWE1ZGRiNzZkMiAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+PiBAQCAtNjU4LDYgKzY1OCwxMSBAQCBw
cm9wZXJ0aWVzOgo+PiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOC1ldmIKPj4g
ICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxydjExMDgKPj4gIAo+PiArICAgICAgLSBkZXNj
cmlwdGlvbjogVGhlb2Jyb21hIFN5c3RlbXMgUFgzMC3CtVE3IHdpdGggSGFpa291IGJhc2Vib2Fy
ZAo+PiArICAgICAgICBpdGVtczoKPj4gKyAgICAgICAgICAtIGNvbnN0OiB0c2QscHgzMC1yaW5n
bmVjay1oYWlrb3UKPj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxweDMwCj4gCj4gVGhp
cyBzaG91bGQgYmUgc29tZXdoZXJlIGFyb3VuZCBvdGhlciBweDMwIHN5c3RlbXMuCgouLi4gb3Ig
bm90IDopIGlmIG90aGVyIG9yZGVyaW5nIGlzIHVzZWQuIEFueXdheSAtIGlmIHlvdSBrZWVwIGV4
aXN0aW5nCm9yZGVyLCB0aGVuOgoKQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
