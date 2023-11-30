Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 855E7C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 13:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOO7zmMsYA8lw/yriVExy445ew/JxQMs9S/Na6dJwQg=; b=WJvjzIEIMde3p3
	ezu/fXjz3/UQtxXSrbTMJKD43z0Q5dLt0qEEzd1qPdfrhEryh/nZyCmWW0QuWSX94dgX6JwwuysUb
	sIyFgenpFRPBGr8do8DtbkPY4N1lDLWu+5N1JNQ3GhH8btq8y2jEji0bGP3z/VByo0O9RvMt9+vbF
	sn5BxzWZAjgR/HBuP30m0X5kLwmdfTG5578/lbsyUFPdhpasxewwzW7iQ7DI8YAcTBtj0AZCWnvNX
	Ba3t2cylhYAlhfSlxXg6VI0TT/SeMK4HBZNmHNPTyowGn/EIJvN5kDSHm73e2fN/YzeB4zwTQgI4M
	J1EIVia9448Jd8/S32lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8gzm-00Ax7y-2Z;
	Thu, 30 Nov 2023 13:22:22 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8gzi-00Ax73-1T;
	Thu, 30 Nov 2023 13:22:19 +0000
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6d815062598so175098a34.0;
        Thu, 30 Nov 2023 05:22:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701350536; x=1701955336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3Ac1OsQ/0PufFzAKJvogoNK3ZXux9UUeIIWbEpuj4w=;
        b=U7beg2AQp0Zqx4U/dsSy0LHsEF3Q6BvHfOLw5dz9xa3uVoqflf60Or/6QMMgFYfdua
         0q5UIqS9Sc3C2MPQBAcKqcEWTODZb4ZIfIjDTpqSUH/Ia290aWvgHXmQ9DHtynDD8L0N
         Gq1EGKEB5ovyDMN1yGjZc06SKvt62Tnks5/DB0vj+rtvqP+I4m6mCiPY2G5PakyBavnb
         URWXecaTfK9iewiva8dK7WnO6lrI34kFtC/W7CzWPyaoYKkEc0ykZDPbJPg0ScnIe50P
         73Bj7VRARINght158/nqfRT0rKNkB4ahFo2yFpozbt5hwo1vneE61LjQAMNnVnnQWTOm
         xwHQ==
X-Gm-Message-State: AOJu0YwYj6skzAQpcWjqXS5CFp6QrLoh6pI+7QsdqNImdE4fIWt9H7DZ
	kXVCi5qAQNjVTRen1jtBjXEB0spZyQalX5d3apY=
X-Google-Smtp-Source: AGHT+IE2dl3Xx9eJWjdmY/6S7l+LmkTasy79qgcO017bYrhvGpUKiq9ghaOZGXLyHzSGuDtnofjD5ts7oxP8wmkedE8=
X-Received: by 2002:a4a:eb86:0:b0:58d:5302:5b18 with SMTP id
 d6-20020a4aeb86000000b0058d53025b18mr17772925ooj.1.1701350536438; Thu, 30 Nov
 2023 05:22:16 -0800 (PST)
MIME-Version: 1.0
References: <0-v1-f82a05539a64+5042-iommu_fwspec_p2_jgg@nvidia.com> <2-v1-f82a05539a64+5042-iommu_fwspec_p2_jgg@nvidia.com>
In-Reply-To: <2-v1-f82a05539a64+5042-iommu_fwspec_p2_jgg@nvidia.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Nov 2023 14:22:05 +0100
Message-ID: <CAJZ5v0gEGFk9P8H25GJ827LkCb=G=QsRqN6SPbh9J7zS+BhQ0w@mail.gmail.com>
Subject: Re: [PATCH 02/30] ACPI: VIOT: Make a viot_iommu_for_each_id()
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: acpica-devel@lists.linux.dev, Andy Gross <agross@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Bjorn Andersson <andersson@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, asahi@lists.linux.dev, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, devicetree@vger.kernel.org, 
	Frank Rowand <frowand.list@gmail.com>, Hanjun Guo <guohanjun@huawei.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, 
	Jean-Philippe Brucker <jean-philippe@linaro.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>, 
	Kees Cook <keescook@chromium.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Len Brown <lenb@kernel.org>, 
	linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-hardening@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hector Martin <marcan@marcan.st>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Robert Moore <robert.moore@intel.com>, Rob Herring <robh+dt@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Sven Peter <sven@svenpeter.dev>, 
	Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy <vdumpa@nvidia.com>, 
	virtualization@lists.linux.dev, Chen-Yu Tsai <wens@csie.org>, 
	Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	patches@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_052218_494965_0C0F1617 
X-CRM114-Status: GOOD (  26.02  )
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

T24gVGh1LCBOb3YgMzAsIDIwMjMgYXQgMjoxMeKAr0FNIEphc29uIEd1bnRob3JwZSA8amdnQG52
aWRpYS5jb20+IHdyb3RlOgo+Cj4gU2ltaWxhciB0byBvZl9pb21tdV9mb3JfZWFjaF9pZCgpIHRo
aXMgcGFyc2VzIHRoZSBWSU9UIEFDUEkgZGVzY3JpcHRpb24KPiBhbmQgaW52b2tlcyBhIGZ1bmN0
aW9uIG92ZXIgZWFjaCBlbnRyeSBpbiB0aGUgdGFibGUuCj4KPiBIYXZlIHZpb3RfaW9tbXVfY29u
ZmlndXJlKCkgdXNlIHRoZSBuZXcgZnVuY3Rpb24gdG8gY2FsbAo+IHZpb3RfZGV2X2lvbW11X2lu
aXQoKS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+
CgpBY2tlZC1ieTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29t
PgoKPiAtLS0KPiAgZHJpdmVycy9hY3BpL3Zpb3QuYyAgICAgICB8IDU0ICsrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2FjcGlfdmlvdC5oIHwg
MTEgKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAyMiBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvdmlvdC5jIGIvZHJpdmVycy9h
Y3BpL3Zpb3QuYwo+IGluZGV4IGM4MDI1OTIxYzEyOWIyLi43YWIzNWVmMDVjODRlMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2FjcGkvdmlvdC5jCj4gKysrIGIvZHJpdmVycy9hY3BpL3Zpb3QuYwo+
IEBAIC0yNSwxMyArMjUsNiBAQAo+ICAjaW5jbHVkZSA8bGludXgvcGNpLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPgo+IC1zdHJ1Y3QgdmlvdF9pb21tdSB7Cj4gLSAg
ICAgICAvKiBOb2RlIG9mZnNldCB3aXRoaW4gdGhlIHRhYmxlICovCj4gLSAgICAgICB1bnNpZ25l
ZCBpbnQgICAgICAgICAgICAgICAgICAgIG9mZnNldDsKPiAtICAgICAgIHN0cnVjdCBmd25vZGVf
aGFuZGxlICAgICAgICAgICAgKmZ3bm9kZTsKPiAtICAgICAgIHN0cnVjdCBsaXN0X2hlYWQgICAg
ICAgICAgICAgICAgbGlzdDsKPiAtfTsKPiAtCj4gIHN0cnVjdCB2aW90X2VuZHBvaW50IHsKPiAg
ICAgICAgIHVuaW9uIHsKPiAgICAgICAgICAgICAgICAgLyogUENJIHJhbmdlICovCj4gQEAgLTMw
NCwxMCArMjk3LDEwIEBAIHZvaWQgX19pbml0IGFjcGlfdmlvdF9pbml0KHZvaWQpCj4gICAgICAg
ICBhY3BpX3B1dF90YWJsZShoZHIpOwo+ICB9Cj4KPiAtc3RhdGljIGludCB2aW90X2Rldl9pb21t
dV9pbml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHZpb3RfaW9tbXUgKnZpb21tdSwKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIGVwaWQpCj4gK3N0YXRpYyBpbnQgdmlv
dF9kZXZfaW9tbXVfaW5pdChzdHJ1Y3QgdmlvdF9pb21tdSAqdmlvbW11LCB1MzIgZXBpZCwgdm9p
ZCAqaW5mbykKPiAgewo+ICAgICAgICAgY29uc3Qgc3RydWN0IGlvbW11X29wcyAqb3BzOwo+ICsg
ICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gaW5mbzsKPgo+ICAgICAgICAgaWYgKCF2aW9tbXUp
Cj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+IEBAIC0zMjQsMTEgKzMxNywxNyBA
QCBzdGF0aWMgaW50IHZpb3RfZGV2X2lvbW11X2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgdmlvdF9pb21tdSAqdmlvbW11LAo+ICAgICAgICAgcmV0dXJuIGFjcGlfaW9tbXVfZndzcGVj
X2luaXQoZGV2LCBlcGlkLCB2aW9tbXUtPmZ3bm9kZSwgb3BzKTsKPiAgfQo+Cj4gLXN0YXRpYyBp
bnQgdmlvdF9wY2lfZGV2X2lvbW11X2luaXQoc3RydWN0IHBjaV9kZXYgKnBkZXYsIHUxNiBkZXZf
aWQsIHZvaWQgKmRhdGEpCj4gK3N0cnVjdCB2aW90X3BjaV9pb21tdV9hbGlhc19pbmZvIHsKPiAr
ICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiArICAgICAgIHZpb3RfZm9yX2VhY2hfZm4gZm47
Cj4gKyAgICAgICB2b2lkICppbmZvOwo+ICt9Owo+ICsKPiArc3RhdGljIGludCBfX2Zvcl9lYWNo
X3BjaV9hbGlhcyhzdHJ1Y3QgcGNpX2RldiAqcGRldiwgdTE2IGRldl9pZCwgdm9pZCAqZGF0YSkK
PiAgewo+ICAgICAgICAgdTMyIGVwaWQ7Cj4gICAgICAgICBzdHJ1Y3QgdmlvdF9lbmRwb2ludCAq
ZXA7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlICphbGlhc2VkX2RldiA9IGRhdGE7Cj4gKyAgICAg
ICBzdHJ1Y3QgdmlvdF9wY2lfaW9tbXVfYWxpYXNfaW5mbyAqaW5mbyA9IGRhdGE7Cj4gICAgICAg
ICB1MzIgZG9tYWluX25yID0gcGNpX2RvbWFpbl9ucihwZGV2LT5idXMpOwo+Cj4gICAgICAgICBs
aXN0X2Zvcl9lYWNoX2VudHJ5KGVwLCAmdmlvdF9wY2lfcmFuZ2VzLCBsaXN0KSB7Cj4gQEAgLTMz
OSwxNCArMzM4LDE0IEBAIHN0YXRpYyBpbnQgdmlvdF9wY2lfZGV2X2lvbW11X2luaXQoc3RydWN0
IHBjaV9kZXYgKnBkZXYsIHUxNiBkZXZfaWQsIHZvaWQgKmRhdGEpCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgZXBpZCA9ICgoZG9tYWluX25yIC0gZXAtPnNlZ21lbnRfc3RhcnQpIDw8IDE2KSAr
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfaWQgLSBlcC0+YmRmX3N0YXJ0
ICsgZXAtPmVuZHBvaW50X2lkOwo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHZp
b3RfZGV2X2lvbW11X2luaXQoYWxpYXNlZF9kZXYsIGVwLT52aW9tbXUsCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXBpZCk7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIGluZm8tPmZuKGVwLT52aW9tbXUsIGVwaWQsIGluZm8tPmlu
Zm8pOwo+ICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICB9Cj4gICAgICAgICByZXR1cm4gLUVO
T0RFVjsKPiAgfQo+Cj4gLXN0YXRpYyBpbnQgdmlvdF9tbWlvX2Rldl9pb21tdV9pbml0KHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gK3N0YXRpYyBpbnQgX19mb3JfZWFjaF9wbGF0Zm9y
bShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB2aW90X2Zvcl9lYWNoX2ZuIGZuLCB2b2lkICppbmZvKQo+ICB7Cj4gICAgICAgICBz
dHJ1Y3QgcmVzb3VyY2UgKm1lbTsKPiAgICAgICAgIHN0cnVjdCB2aW90X2VuZHBvaW50ICplcDsK
PiBAQCAtMzU3LDEyICszNTYsMjggQEAgc3RhdGljIGludCB2aW90X21taW9fZGV2X2lvbW11X2lu
aXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgbGlzdF9mb3JfZWFj
aF9lbnRyeShlcCwgJnZpb3RfbW1pb19lbmRwb2ludHMsIGxpc3QpIHsKPiAgICAgICAgICAgICAg
ICAgaWYgKGVwLT5hZGRyZXNzID09IG1lbS0+c3RhcnQpCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIHZpb3RfZGV2X2lvbW11X2luaXQoJnBkZXYtPmRldiwgZXAtPnZpb21tdSwKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcC0+ZW5k
cG9pbnRfaWQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBmbihlcC0+dmlvbW11
LCBlcC0+ZW5kcG9pbnRfaWQsIGluZm8pOwo+ICAgICAgICAgfQo+ICAgICAgICAgcmV0dXJuIC1F
Tk9ERVY7Cj4gIH0KPgo+ICtpbnQgdmlvdF9pb21tdV9mb3JfZWFjaF9pZChzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHZpb3RfZm9yX2VhY2hfZm4gZm4sIHZvaWQgKmluZm8pCj4gK3sKPiArICAgICAgIGlm
IChkZXZfaXNfcGNpKGRldikpIHsKPiArICAgICAgICAgICAgICAgc3RydWN0IHZpb3RfcGNpX2lv
bW11X2FsaWFzX2luZm8gcGNpX2luZm8gPSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgLmRl
diA9IGRldiwKPiArICAgICAgICAgICAgICAgICAgICAgICAuZm4gPSBmbiwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAuaW5mbyA9IGluZm8sCj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAg
ICAgICAgICAgIHJldHVybiBwY2lfZm9yX2VhY2hfZG1hX2FsaWFzKHRvX3BjaV9kZXYoZGV2KSwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19mb3JfZWFj
aF9wY2lfYWxpYXMsICZwY2lfaW5mbyk7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaWYgKGRl
dl9pc19wbGF0Zm9ybShkZXYpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gX19mb3JfZWFjaF9w
bGF0Zm9ybSh0b19wbGF0Zm9ybV9kZXZpY2UoZGV2KSwgZm4sIGluZm8pOwo+ICsgICAgICAgcmV0
dXJuIC1FTk9ERVY7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiB2aW90X2lvbW11X2NvbmZpZ3VyZSAt
IFNldHVwIElPTU1VIG9wcyBmb3IgYW4gZW5kcG9pbnQgZGVzY3JpYmVkIGJ5IFZJT1QKPiAgICog
QGRldjogdGhlIGVuZHBvaW50Cj4gQEAgLTM3MSwxMCArMzg2LDUgQEAgc3RhdGljIGludCB2aW90
X21taW9fZGV2X2lvbW11X2luaXQoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICov
Cj4gIGludCB2aW90X2lvbW11X2NvbmZpZ3VyZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAt
ICAgICAgIGlmIChkZXZfaXNfcGNpKGRldikpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBwY2lf
Zm9yX2VhY2hfZG1hX2FsaWFzKHRvX3BjaV9kZXYoZGV2KSwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdmlvdF9wY2lfZGV2X2lvbW11X2luaXQsIGRldik7
Cj4gLSAgICAgICBlbHNlIGlmIChkZXZfaXNfcGxhdGZvcm0oZGV2KSkKPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIHZpb3RfbW1pb19kZXZfaW9tbXVfaW5pdCh0b19wbGF0Zm9ybV9kZXZpY2UoZGV2
KSk7Cj4gLSAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArICAgICAgIHJldHVybiB2aW90X2lvbW11
X2Zvcl9lYWNoX2lkKGRldiwgdmlvdF9kZXZfaW9tbXVfaW5pdCwgZGV2KTsKPiAgfQo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2FjcGlfdmlvdC5oIGIvaW5jbHVkZS9saW51eC9hY3BpX3Zp
b3QuaAo+IGluZGV4IGE1YTEyMjQzMTU2Mzc3Li5mY2U0ZWVmY2FlNGFhZCAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2xpbnV4L2FjcGlfdmlvdC5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9hY3BpX3Zp
b3QuaAo+IEBAIC01LDYgKzUsMTcgQEAKPgo+ICAjaW5jbHVkZSA8bGludXgvYWNwaS5oPgo+Cj4g
K3N0cnVjdCB2aW90X2lvbW11IHsKPiArICAgICAgIC8qIE5vZGUgb2Zmc2V0IHdpdGhpbiB0aGUg
dGFibGUgKi8KPiArICAgICAgIHVuc2lnbmVkIGludCAgICAgICAgICAgICAgICAgICAgb2Zmc2V0
Owo+ICsgICAgICAgc3RydWN0IGZ3bm9kZV9oYW5kbGUgICAgICAgICAgICAqZndub2RlOwo+ICsg
ICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICAgICAgICAgICBsaXN0Owo+ICt9Owo+ICsKPiAr
dHlwZWRlZiBpbnQgKCp2aW90X2Zvcl9lYWNoX2ZuKShzdHJ1Y3QgdmlvdF9pb21tdSAqdmlvbW11
LCB1MzIgZXBpZCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmluZm8p
Owo+ICtpbnQgdmlvdF9pb21tdV9mb3JfZWFjaF9pZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHZpb3Rf
Zm9yX2VhY2hfZm4gZm4sIHZvaWQgKmluZm8pOwo+ICsKPiAgI2lmZGVmIENPTkZJR19BQ1BJX1ZJ
T1QKPiAgdm9pZCBfX2luaXQgYWNwaV92aW90X2Vhcmx5X2luaXQodm9pZCk7Cj4gIHZvaWQgX19p
bml0IGFjcGlfdmlvdF9pbml0KHZvaWQpOwo+IC0tCj4gMi40Mi4wCj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
