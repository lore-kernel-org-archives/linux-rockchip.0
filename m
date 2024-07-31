Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D09CC3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 10:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV5sQnliOR3thDm0HJdS7BsyrS3gT1882qBr30189Mo=; b=W08CEc2nBO+XoA
	kY3L9YxLmwUihvA3JrJLQsMclUlIya4Sl65uU9NMVGwMx87vzdi6JOjbXC/x6TilseZSxI2FG/lIx
	mFElMau3lg13heHy5BupnfzbK/CVqeFhQVrbkulO7K5M56vJNvr7NxL/HdiONHmnHIvWawzA1u0+z
	Vo0N2FQj60345mtTgvmK8yNS61IxsCZV22Uk9cWxqP8DmjEaMh+BSaXacmCC8sKUI9y6t/BYoWPgH
	YleFnbf8H5l16W2MsXPn9AJ5sH+j9l51+f2OfTQs0y52eGTa43iQvgR4+GloceTbUKNzTcDEM0b+R
	HQRu6TsekvvOTHDkCnew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ6Og-00000000hKL-3hq8;
	Wed, 31 Jul 2024 10:17:30 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ6OD-00000000hEG-1ESd;
	Wed, 31 Jul 2024 10:17:02 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-530ae4ef29dso1609173e87.3;
        Wed, 31 Jul 2024 03:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722421019; x=1723025819; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0AaaFuIf1xRzlWKEfSWSyC0cUztpO1y/p+yF/M4k91k=;
        b=jRVKg8FOpBDFkJCPQKSTvp0k9SeZ9Gilgj0vnUvQslKa91JYz5M40Za8ArCZqNX5yq
         abd0EgPB/jtSyXwif76dthg3cPkjMfitoIPuABavxRskVUXEm5IusSCABRsf3F53AirY
         LDaxBEMjTAtdpKEDNqTSEmPIlDcxeRmvoSVALIJrLPN0NjfOiG4YbjvsxLsccWkFp+Ai
         CMZzQqMDc6cApKMJ4PaH3yyrbpSOuNMD50X2h5RwXlhEzQqX0x5JOxDuAzv5lGkS/tVs
         XV46Zrc8albVQ60BjOZck9MHLJEb/nC2n8k6qAH+p3qD4sQ0kaTcEPA9os1zK6OIkWdF
         N7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722421019; x=1723025819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0AaaFuIf1xRzlWKEfSWSyC0cUztpO1y/p+yF/M4k91k=;
        b=vqjn+Z05KqoI6Qjuod46NhgLOtWrKGu4wjXWYfXoO+maPjRA05e3OlCvKBXWKNW0cy
         EIqJWD3OmyqVVuF06+nfOgShZ6BJ4azqguletPy7J5nB8dlb3AT9NK1X+5Ile2I+XHrc
         pcuWky2lFk/bd23qcJIWRjIvMm+m+Y4PPWrW+IiIGlffjdrdpjh/TN+eObL84+Zhw+8G
         hw8t+dgwbyW2Kc+lyoKxxI31rXYUDf2WNNvVU1UU86xHS/qa88H9ScjqJ7IobsmqR5hL
         mwLdBpguBO8gKRvGyoJxhD/Ir4wKrS1+JVkEhwRm2Xtb6MZcMudo16/0EK6i3jOpMOgm
         bOsA==
X-Forwarded-Encrypted: i=1; AJvYcCVEoC9noUCjVMP4VsdKrocyElasTRC5oegwPJaa0AfPmkxB0PPPv3WFaD7TV3/i5ZwujJyu5k2Ih6F2aKJG5BPW@lists.infradead.org, AJvYcCWmsW/Z9IZYvletuB6YOc4ISbpeDrVeVNeo9i2vimXpT3hUrWDHT6iRJ9YKJQol76jLeMZtMAkuFDeE+vYoGqA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxuK+pX8NfnL7IC+2VS0id/t4LENnOlE75nKqfeBgk93MuTVjT
	oLPsoowg2yBhXKNS8Y8CEiB1sQ0/0d9QzBywfrrfd7OIxbSnOzzi
X-Google-Smtp-Source: AGHT+IF2e1PeQYS2su4wh/SIyoSoRuTA/mOWzxXZEnnmqqjxiriV4Tt63IghqsPDtpogPid6UjTSbQ==
X-Received: by 2002:a19:8c11:0:b0:52c:c9e4:3291 with SMTP id 2adb3069b0e04-5309b2e0b50mr8248953e87.60.1722421018492;
        Wed, 31 Jul 2024 03:16:58 -0700 (PDT)
Received: from [172.30.17.119] ([194.247.191.114])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c0820esm2149509e87.167.2024.07.31.03.16.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 03:16:57 -0700 (PDT)
Message-ID: <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
Date: Wed, 31 Jul 2024 13:16:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 conor+dt@kernel.org, arend.vanspriel@broadcom.com
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com>
Content-Language: en-US
From: Alexey Charkov <alchark@gmail.com>
In-Reply-To: <20240731061132.703368-5-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_031701_356679_8949AC5B 
X-CRM114-Status: GOOD (  21.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSmFjb2JlLAoKCk9uIDMxLzA3LzIwMjQgOToxMSBhbSwgSmFjb2JlIFphbmcgd3JvdGU6CiA+
IFdpRmkgbW9kdWxlcyBvZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQg
c3VwcG9ydCB0bwogPiBlbmFibGUgdGhlIGNsb2NrIHRvIFBDSWUgZHJpdmVyIGFuZCBtb3ZlICJi
cmNtLGJjbTQzMjktZm1hYyIgY2hlY2sKID4gdG8gdGhlIHRvcCBvZiBicmNtZl9vZl9wcm9iZQog
PgogPiBDby1kZXZlbG9wZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgogPiBTaWdu
ZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KID4gU2lnbmVkLW9mZi1ieTog
SmFjb2JlIFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+CiA+IC0tLQogPsKgIC4uLi9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmPCoMKgwqAgfCAxMiArKysr
KysrKysrKy0KID7CoCAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQogPgogPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL29mLmMgCmIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL29mLmMKID4gaW5kZXggZTQwNmUxMTQ4MWE2Mi4uN2UwYTJhZDVjN2M4
YSAxMDA2NDQKID4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjEx
L2JyY21mbWFjL29mLmMKID4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL29mLmMKID4gQEAgLTYsNiArNiw3IEBACiA+wqAgI2luY2x1ZGUgPGxp
bnV4L29mLmg+CiA+wqAgI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgogPsKgICNpbmNsdWRlIDxs
aW51eC9vZl9uZXQuaD4KID4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KID4KID7CoCAjaW5jbHVk
ZSA8ZGVmcy5oPgogPsKgICNpbmNsdWRlICJkZWJ1Zy5oIgogPiBAQCAtNzAsMTIgKzcxLDE2IEBA
IHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBlbnVtIApicmNtZl9idXNf
dHlwZSBidXNfdHlwZSwKID7CoCB7CiA+wqDCoMKgwqDCoCBzdHJ1Y3QgYnJjbWZtYWNfc2Rpb19w
ZCAqc2RpbyA9ICZzZXR0aW5ncy0+YnVzLnNkaW87CiA+wqDCoMKgwqDCoCBzdHJ1Y3QgZGV2aWNl
X25vZGUgKnJvb3QsICpucCA9IGRldi0+b2Zfbm9kZTsKID4gK8KgwqDCoCBzdHJ1Y3QgY2xrICpj
bGs7CiA+wqDCoMKgwqDCoCBjb25zdCBjaGFyICpwcm9wOwogPsKgwqDCoMKgwqAgaW50IGlycTsK
ID7CoMKgwqDCoMKgIGludCBlcnI7CiA+wqDCoMKgwqDCoCB1MzIgaXJxZjsKID7CoMKgwqDCoMKg
IHUzMiB2YWw7CiA+CiA+ICvCoMKgwqAgaWYgKCFucCB8fCAhb2ZfZGV2aWNlX2lzX2NvbXBhdGli
bGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQogPiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwoK
RGlkIHlvdSB0ZXN0IHRoaXM/IFRoZSBEVFMgcGF0Y2ggeW91IHNlbnQgYXMgcGFydCBvZiB0aGlz
IHNlcmllcyBkb2Vzbid0IApsaXN0ICJicmNtLGJjbTQzMjktZm1hYyIgaW4gdGhlIGNvbXBhdGli
bGUsIHNvIHRoaXMgd2lsbCBwcm9iYWJseSByZXR1cm4gCnJpZ2h0IGhlcmUsIHNraXBwaW5nIG92
ZXIgdGhlIHJlc3Qgb2YgeW91ciBwYXRjaC4KClBsZWFzZSB0ZXN0IGJlZm9yZSByZXNlbmRpbmcs
IGJvdGggd2l0aCBhbmQgd2l0aG91dCB0aGUgZHJpdmVyIGZvciB0aGUgCkJsdWV0b290aCBwYXJ0
IG9mIHRoZSBjaGlwIChzaW5jZSBpdCBhbHNvIHRvdWNoZXMgY2xvY2tzKS4KCllvdSBhcmUgYWxz
byBjaGFuZ2luZyB0aGUgYmVoYXZpb3IgZm9yIG90aGVyIHN5c3RlbXMgYnkgcHV0dGluZyB0aGlz
IApjaGVjayBmdXJ0aGVyIHVwIHRoZSBwcm9iZSBwYXRoLCB3aGljaCBtaWdodCBicmVhayB0aGlu
Z3MgZm9yIG5vIHJlYXNvbi4gCkJldHRlciBwdXQgeW91ciBjbGstcmVsYXRlZCBhZGRpdGlvbiBi
ZWxvdyB3aGVyZSB0aGlzIGNoZWNrIHdhcyAKb3JpZ2luYWxseSwgcmF0aGVyIHRoYW4gcmVvcmRl
ciBzdHVmZiB5b3UgZG9uJ3QgaGF2ZSB0byByZW9yZGVyLgoKID4gKwogPsKgwqDCoMKgwqAgLyog
QXBwbGUgQVJNNjQgcGxhdGZvcm1zIGhhdmUgdGhlaXIgb3duIGlkZWEgb2YgYm9hcmQgdHlwZSwg
CnBhc3NlZCBpbgogPsKgwqDCoMKgwqDCoCAqIHZpYSB0aGUgZGV2aWNlIHRyZWUuIFRoZXkgYWxz
byBoYXZlIGFuIGFudGVubmEgU0tVIHBhcmFtZXRlcgogPsKgwqDCoMKgwqDCoCAqLwogPiBAQCAt
MTEzLDggKzExOCwxMyBAQCB2b2lkIGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwg
ZW51bSAKYnJjbWZfYnVzX3R5cGUgYnVzX3R5cGUsCiA+wqDCoMKgwqDCoMKgwqDCoMKgIG9mX25v
ZGVfcHV0KHJvb3QpOwogPsKgwqDCoMKgwqAgfQogPgogPiAtwqDCoMKgIGlmICghbnAgfHwgIW9m
X2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMiKSkKID4gK8KgwqDC
oCBjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChkZXYsICJscG8iKTsKID4gK8Kg
wqDCoCBpZiAoIUlTX0VSUl9PUl9OVUxMKGNsaykpIHsKID4gK8KgwqDCoMKgwqDCoMKgIGJyY21m
X2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwogPiArwqDCoMKgwqDCoMKgwqAg
Y2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwogPiArwqDCoMKgIH0gZWxzZSB7CiA+wqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybjsKCldoeSByZXR1cm4gaGVyZT8gSWYgdGhlIGNsb2NrIGlzIG9wdGlv
bmFsLCBhIGxvdCBvZiBzeXN0ZW1zIHdpbGwgbm90IApoYXZlIGl0IC0gdGhhdCBzaG91bGRuJ3Qg
cHJldmVudCB0aGUgZHJpdmVyIGZyb20gcHJvYmluZy4gQW5kIHlvdSBhcmUgCnN0aWxsIG5vdCBo
YW5kbGluZyB0aGUgLUVQUk9CRV9ERUZFUiBjYXNlIHdoaWNoIHdhcyBtZW50aW9uZWQgb24geW91
ciAKcHJldmlvdXMgc3VibWlzc2lvbi4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
