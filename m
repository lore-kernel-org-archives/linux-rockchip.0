Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B4C5C197A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 06:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sydoU5X0d9gCYtQcAKf/5zZiXGLpiPYwUh4FK4IqNyM=; b=J280qUY0eRYKos
	iRhGYMBXj/ZHigUa14FDKobI9zHVzBqxMBWzKMGZxeqHLIW3/XRquirAAMCADYDAlz2yD4uObV6CA
	ArQsdYjV8xHtPfENyarAmPBfvH7UINyhHDZ7/p92vH0E8NpFdy4Kb9zJc7C6L52R8FjHK2R6y5k19
	3dhkariMRvkiMuRSDtHxNUD6I7dn5Xy0wZdZ2yZ+uqmQLrpH1vH+V3+/5vn9SC+XKu6tF47viH4UW
	YBAztHbt+Y3ZJ6S3zke2UnmYa8x7kU03ITwWW2p+WsnAbYLrKrrdF5JDrpcIop30WjaDT7ocAJ2H4
	mABn/VcghUHcxeeLDrjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3smb-005mmp-2u;
	Fri, 17 Nov 2023 06:56:53 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3smZ-005mlu-2d
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 06:56:53 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50930f126b1so2195383e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Nov 2023 22:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700204208; x=1700809008; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T66xySD/6BWFxQMYfuVxdprtl5AUvCVORapS2X/UsjA=;
        b=l2uiljKoTOvOXdFM9LToLIPt8hoG6uwly72/e8KUlPp0DpgBpcPVKS8Dj5re7LOAi7
         KFBnK0wmjwBmDhMRuPIUqXzkom8Xwwd450iMqqdEhsqhPIcMumIUR5umPVdRZME5DKHC
         iZdJy71QkKWPs9Q6NoXfaQGZVlABE4bGUqAzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700204208; x=1700809008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T66xySD/6BWFxQMYfuVxdprtl5AUvCVORapS2X/UsjA=;
        b=TraFjuc765AE7Qu0YTV18iHbh2wuwheZMSp+ulHPzaIIf1VUH/LqStfQQ4PfShlXFn
         N7yINVMT16UouFPxm6kUcU3YG484vK0rJn18B9JwU2xCy0CaMUCducKX4ZTJqJ4U5hIS
         a76qiCt1v+5k3amrAmTs87WQQXctiX6QKmKXjvR1bZxg8v3PAtJGVElxqlwKciKmYc+S
         kvYh0TjRZJw6138FOfr0oW+zTCcYn7z2Y70BRBjE/ygrhmOWEmVMG+/XNaE76RP4NFBJ
         t4itCVBrwinIgLPSnHMTsq/Hq2gdhI/15fjA8Sa93wCI1MpPJiKBrvvtPUEORy2BHSTy
         Unkg==
X-Gm-Message-State: AOJu0YwyAOxvcR0CJyAMLj6XrD+89SqHkwGv0a+uORCDFy+cUyCnYMF0
	oxkg9P662Er8VEWvYOAlRUUPq37qoNsSeJOLdHtccQ==
X-Google-Smtp-Source: AGHT+IFglSCUhlR+oyIk3/8hEw9b1yf+H4f0nrHpnUuSq77qWRvZSkqp2vLBmJbn9Hw3jSSmXioHPYnOaZeT3dSXuhg=
X-Received: by 2002:ac2:4e0f:0:b0:50a:26b:6ddf with SMTP id
 e15-20020ac24e0f000000b0050a026b6ddfmr16092967lfr.63.1700204207777; Thu, 16
 Nov 2023 22:56:47 -0800 (PST)
MIME-Version: 1.0
References: <20231116154816.70959-1-andrzej.p@collabora.com> <20231116154816.70959-5-andrzej.p@collabora.com>
In-Reply-To: <20231116154816.70959-5-andrzej.p@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 17 Nov 2023 14:56:36 +0800
Message-ID: <CAGXv+5Hag=-JqYAKOgNUyFSjuwBu6ij1Rsv1cp==duGjY8w42A@mail.gmail.com>
Subject: Re: [RFC 4/6] media: verisilicon: Update H1 register definitions
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_225651_891416_B5642E1E 
X-CRM114-Status: GOOD (  11.76  )
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

T24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMTE6NDjigK9QTSBBbmRyemVqIFBpZXRyYXNpZXdpY3oK
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEFkZCBkZWZpbml0aW9uIG9mIHJl
Z2lzdGVyIGF0IG9mZnNldCAweDAwYy4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJh
c2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gxX3JlZ3MuaCB8IDkgKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmggYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmgKPiBpbmRleCBjMWM2NmM5MzRh
MjQuLmVmYjQ2ZGEyM2VhYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmgKPiBAQCAtMjMsNiArMjMsMTUgQEAKPiAgI2Rl
ZmluZSAgICAgSDFfUkVHX0FYSV9DVFJMX0lOUFVUX1NXQVAzMiAgICAgICAgICAgICAgIEJJVCgy
KQo+ICAjZGVmaW5lICAgICBIMV9SRUdfQVhJX0NUUkxfT1VUUFVUX1NXQVA4ICAgICAgICAgICAg
ICAgQklUKDEpCj4gICNkZWZpbmUgICAgIEgxX1JFR19BWElfQ1RSTF9JTlBVVF9TV0FQOCAgICAg
ICAgICAgICAgICAgICAgICAgIEJJVCgwKQo+ICsjZGVmaW5lIEgxX1JFR19ERVZJQ0VfQ1RSTCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMHgwMGMKPiArI2RlZmluZSAgICAgSDFfUkVHX0RF
VklDRV9DVFJMX1NDQUxFX09VVFBVVF9TV0FQOCAgICAgIEJJVCgyNykKPiArI2RlZmluZSAgICAg
SDFfUkVHX0RFVklDRV9DVFJMX1NDQUxFX09VVFBVVF9TV0FQMTYgICAgIEJJVCgyNikKPiArI2Rl
ZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX1NDQUxFX09VVFBVVF9TV0FQMzIgICAgIEJJVCgy
NSkKPiArI2RlZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX01WX09VVFBVVF9TV0FQOCAgICAg
ICAgIEJJVCgyNCkKPiArI2RlZmluZSAgICAgSDFfUkVHX0RFVklDRV9DVFJMX01WX09VVFBVVF9T
V0FQMTYgICAgICAgICAgICAgICAgQklUKDIzKQo+ICsjZGVmaW5lICAgICBIMV9SRUdfREVWSUNF
X0NUUkxfTVZfT1VUUFVUX1NXQVAzMiAgICAgICAgICAgICAgICBCSVQoMjIpCj4gKyNkZWZpbmUg
ICAgIEgxX1JFR19ERVZJQ0VfQ1RSTF9JTlBVVF9SRUFEXzFNQiAgICAgICAgICBCSVQoMjEpCj4g
KyNkZWZpbmUgICAgIEgxX1JFR19ERVZJQ0VfQ1RSTF9BWElfRFVBTF9DSEFOTkVMICAgICAgICAg
ICAgICAgIEJJVCgyMCkKCkFjY29yZGluZyB0byB0aGUgaS5NWDhNIE1pbmkgcmVmZXJlbmNlIG1h
bnVhbCwgdGhpcyBiaXQgaXMgYSAiZGlzYWJsZSIKY29udHJvbCwgaS5lLiBzZXR0aW5nIHRoaXMg
Yml0IGRpc2FibGVzIGR1YWwgY2hhbm5lbCBBWEkuIEkgdGhpbmsgdGhlCm1hY3JvIHNob3VsZCBl
eHBsaWNpdGx5IHN0YXRlIHRoaXMgaW4gdGhlIG5hbWluZywgc28gc29tZXRoaW5nIGxpa2UKSDFf
UkVHX0RFVklDRV9DVFJMX0RJU0FCTEVfQVhJX0RVQUxfQ0goQU5ORUwpLgoKT3RoZXIgYml0cyBt
YXRjaGVzIHRoZSByZWZlcmVuY2UgbWFudWFsLgoKPiAgI2RlZmluZSBIMV9SRUdfQUREUl9PVVRQ
VVRfU1RSRUFNICAgICAgICAgICAgICAgICAgICAgIDB4MDE0Cj4gICNkZWZpbmUgSDFfUkVHX0FE
RFJfT1VUUFVUX0NUUkwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDE4Cj4gICNk
ZWZpbmUgSDFfUkVHX0FERFJfUkVGX0xVTUEgICAgICAgICAgICAgICAgICAgICAgICAgICAweDAx
Ywo+IC0tCj4gMi4yNS4xCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
