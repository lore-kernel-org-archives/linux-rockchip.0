Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CFC4CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 07:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LXN+l3ud6if4L+3AGntuH9rBI6uK/cpfKDv/b8cY4w=; b=fLkNg//t52fSF3
	bWVXqx2feKV05jg8I7q3r6KpKlQiAlWlWXfjhB/hlFgtOiACHGQ71ubJ6/trtfMj6cc1AUbzsjiml
	bNI1z2WB5VnYAfw16EmS4tF5CqGmOZ5T5+6UcodHF34Akzr7cOckWhVvr9BIzsd0oWSkcE7kMAYDw
	HEmrWqb4TehTwVOm7wcOXprGtJMbHuZKEep0M1aDfb6/u2h9I99pytefCeSLYnTtcTJsDHDeF3Hix
	6NDryussAdgTxP50sqlUFfYEIaMaw1A+aGeGsJi/HJFbMl1YCRsAZ34hIlH3raNbBhhOENeWt86Wm
	nzwjEC4d+crgV9ajnP4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzuo-00000000DKm-2Utl;
	Tue, 06 Oct 2026 07:48:46 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzul-00000000DIM-2uyH
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:44 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c2e31c05606so76880766b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 00:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791272922; cv=none;
        d=google.com; s=arc-20260327;
        b=YJZ5uOQUXXbz/i/SHXX2qxdaW8baSvzQSzJBGcSPtFQFxfZiFt2gn0mHthq1SGtB4c
         PfsDdrsmr+Jfw9IhQNZO5NLrenAp3RU2mGacC204bRQgT5YUMzOCEzEYSzdH00w0yuKJ
         NNRaMaZy96i0DFauHXqJ7y2pebL+e5w+xSvK2bIf0hXLhM8H3IuRbln/HQAEOZSt3kli
         ZZb1Ia57RqHWW4RVRYCgM3uw3WuB2x9A/3MaTXvCb6/Pt2PYi0IvHNr+YqLz9nGw8rVh
         jPRd39tKTzKCJ9rRKxJLrHRhSL0WWNwdm+CYiKUiEByojInAmOfO49aLJWPYNRQUDQ4W
         u8vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        fh=76eDCd+wNDg1uwnhr+U0By0nQpcZP3TqKUDSLZGUT/U=;
        b=jcMhkl7yjJu+RAmBmXSLsPokwiB4cEaQeF4Cv7fHpwbVRZJPJN/DhiVcDArYQLLLIV
         noMba0/dDAOwIMov5/A/7pS8eL1UwF37ovS33025xsZCSoBWEPtWmGAg++c2fCf13RWq
         XNRGSKcf4iPIWeKlfVhUsRvbxRCyNby6aeVNWMwJI3pS4b/eTxmdeg8X9ytoHxiUUMCg
         +ZymIYlR8UNR1tADhwUHGR96prRzPs9uVlf28lpxHbAGlAde23QAQZ0QrBQfFLqVMNGf
         4v0vlq8MQfIshcb+cjhO/eSnl5tIjdlTcm0SWdrDHaWvXMs/l393c430y0rQH8ICosCp
         gZgA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272922; x=1791877722; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        b=nTjjfp6jnMaS0+/hdsaWSFeaHEMEWKDzxVNQ+m89g0YV8gbdwZB7t3T4nZ6vKeHGLo
         VdiJsDQac2J0uKgHMil3xXZVPsvOC5NjehoexUpsCu0Sv6zBAmQDduF7rC/qL9m/3Ao+
         yFKpAV20w/IjS94XShrFR7ViDn6Ml1SJjwAeQ+NfkBFCU+2g1L5LILQbUxoiK5kumPYI
         qF1xO/tt5kWiqG8n7tnOfe/TzMSQGXgsOnCIMlT7SJgFIHHgGrSiDx5kf670ZcFhJ3z4
         hEIKr/mseGtZzVum52WQIVmzvwoOkFgCx6I3p6mNdkN3YXgSd8vZ2rT4t7PbQhNC6bTc
         Zw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272922; x=1791877722;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LIS7LQGXFKGRWwjzJfFhANm/+ELSmq9NRDYM4Ibfol0=;
        b=agAG0WdpX/OXapH76I6LE1om4/F+jsT1KOlkYR2KGF/5s/KCjLQyKz2oXbgp1XSt+s
         fGq6sDnt6mfgfyMZZs/KniZjeaRwjHh+WC4e8qb/HMA8BwZjyCXcjOtPgRbcS3LymxZV
         AWK3sfo7Ml71uJEDwsXZhRSWHnGQTyg2NVsfBsCNYINGRkazQW+faIuQtjYQjKYf4MbT
         +E6qyiyhPZPVPCg5SXpyezzDRJJCbcd/VUbMe3k7tabDuWbKSMSW6Kx2okKCTuIa8Wv8
         4vytr/VWRJXiHFGIZTWOUynCgbjcVj7CL3IuXVurkRmPcNLJ0dZc7m/L5AJJNVPOdtUr
         Slgw==
X-Forwarded-Encrypted: i=1; AKwUvBzxCBx51waDbeC55Rv9soDXaid7/CNS6Xx3GU5x6hhKT0h6BoJBMlN0WMXHm1oqiHJR3bav/qjg/9TExIa6Cg==@lists.infradead.org
X-Gm-Message-State: AFuF++nWjpIDRkPG6TznRFIaNdO6CazHUNgcTVUhuxVGrSx3Vf0x7cWe
	lbwKD3zq7uO5WSrXUj1JcVHSyd/QiGXtsov+irdISF2lVY0Zpx5+thKJhEpEK1UyMZD/KRt75ee
	j37T6vdG3nyda4mbqYqEw2qkFle+x/mo=
X-Gm-Gg: AYBFou1P5nNYQhRd5DATTvvdkbjs5tKGNQY2fQJ8PM5Bku8fkIrU0vETF/x2+HkLX2M
	AXtc0Nti6+OmD2iYl8p7Is52mosUJ1yzG2gvue7KEJRLlhb3ptKcokicbjzdszytfsY+sz+9CIB
	ie31xvJTI0HflHxSCHCEk8zoHRAfmK8KibCWBeie0fBk1Nw8wka5RwbFc1B+20LqYFohQqVVFYA
	DdTBLF7GVQ0TRTR93tScoh/xmp8Cb1kEKIJfkVlVp/Mk3FmdxxlbmdtlLmpShOQ4eWQz4QyGJ0Z
	8T8aTf4SqVe+rJvZxZDc2UNu5gSKc3FfabLeSvbNSklv2tPJNvpGwrelLg==
X-Received: by 2002:a17:907:9405:b0:c2a:f360:1c67 with SMTP id
 a640c23a62f3a-c316a07eb4cmr65136466b.35.1791272920911; Tue, 06 Oct 2026
 00:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20261005225944.1171574-1-coiaprant@gmail.com> <20261006032710.GA3539706-robh@kernel.org>
In-Reply-To: <20261006032710.GA3539706-robh@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 15:48:27 +0800
X-Gm-Features: AclHuK-_H5DMjjR501xY25PLqDQ4wPnk0DiXBT1PdwIvhQ2wQ01nPR-CgEl7PoQ
Message-ID: <CALj3r0hwkXBowh=vUbC9yPimkraMH1NJ3OmgBb0zp-z22ZFXvg@mail.gmail.com>
Subject: Re: [PATCH v11 0/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004843_755622_5C849173 
X-CRM114-Status: GOOD (  13.00  )
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

Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6jCAx
MToyN+WGmemBk++8mgo+Cj4gT24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMDY6NTk6NDJBTSArMDgw
MCwgQ29pYSBQcmFudCB3cm90ZToKPiA+IENoYW5nZXMgc2luY2UgdjEwOgo+ID4KPiA+IC0gRHJv
cCB0aGUgdG9wLWxldmVsICJkZWZhdWx0OiAxIiBmb3IgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwi
Lgo+ID4gICBkdHNjaGVtYSBpbmplY3RzIHRvcC1sZXZlbCBkZWZhdWx0cyBpbnRvIGV2ZXJ5IG1h
dGNoaW5nIG5vZGUsIGFuZCB0aGUKPiA+ICAgaW5qZWN0ZWQgdmFsdWUgY29uZmxpY3RzIHdpdGgg
dGhlICJlbHNlIiBicmFuY2ggdGhhdCBmb3JiaWRzIHRoZQo+ID4gICBwcm9wZXJ0eSBvbiBub24t
UkszNTY4IHZhcmlhbnRzLCBicmVha2luZyBkdGJzX2NoZWNrIG9uIHRob3NlCj4gPiAgIHBsYXRm
b3Jtcy4gVGhlIGRyaXZlciBhbHJlYWR5IHRyZWF0cyBhbiBhYnNlbnQgcHJvcGVydHkgYXMgMSAo
R01BQzEpLAo+ID4gICBzbyBiZWhhdmlvciBpcyB1bmNoYW5nZWQuCj4KPiBXaGF0PyBUaGF0J3Mg
bm90IHJpZ2h0LiAnZGVmYXVsdCcgaGFzIG5vIGVmZmVjdCBvbiB0aGUgdmFsaWRhdGlvbi4KPiBQ
bGVhc2UgYWRkIGl0IGJhY2suIElmIHRoZSBwcm9wZXJ0eSBkb2Vzbid0IGFwcGx5IHRvIHNvbWUg
dmFyaWFudCwgdGhlbgo+IGRlZmF1bHQgZG9lc24ndCBtYXR0ZXIuCj4KPiBSb2IKCkhpIFJvYiwK
ClRoYW5rcyBmb3IgdGhlIGNvcnJlY3Rpb24uIFlvdSdyZSByaWdodCwgJ2RlZmF1bHQnIGhhcyBu
byBlZmZlY3Qgb24KdmFsaWRhdGlvbi4gSSdsbCBhZGQgaXQgYmFjayBhbmQgc2VuZCBhIHYxMiBy
aWdodCBhd2F5LgoKU29ycnkgZm9yIHRoZSBub2lzZS4KCkNvaWEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
