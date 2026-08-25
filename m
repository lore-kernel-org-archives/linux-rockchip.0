Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB1FC61DBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2026 12:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2z6F3o3yJdLGFnlez3ewyTVaYyZqtBE9vLT9PqAXaA=; b=CPXOkpL6WBhXDR
	5WQ+X8YOnDSbvh0Mj95s0yrEgHMlcAkMf5rvKjX8YK5k4u81IO+2Lz+ml5b/GAGfjtaYVUV5DpuOL
	HD5GPEJEmMUhzykNHb96pVhRWZ7N98GP0wCf2Pf+Mhh52h+IpYQvqs5gSF3OR9tRCB6pqY4+EN+b7
	qI0IBCzUpFA0LjL/xsS0IZxW+yjzMfWx+CFK4z0Md0nGMI1DWwjdH5nbOa+MreZLYuULNyqA5e3zS
	fPA6Xxfg02GcPSfRVVhYR/Y0OJrl57VQm2y4yzKxrwR+u2+5Lu2e3AnDX/g0m9T6Aev4jZiRs/YKa
	p98uJLYhN7hIWgMiURyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqKy-00000000mbO-39g0;
	Tue, 25 Aug 2026 12:33:08 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyqKv-00000000ma9-1IMq
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Aug 2026 12:33:07 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-836c2907a24so3616767b3.0
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2026 05:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787661184; cv=none;
        d=google.com; s=arc-20260327;
        b=nDlYqbyejrzkwDzsRwUOjxfmzvVKbTdY91KOpAdCSMYDARhWQBmOxRTfKG1Tm4T0Q7
         PG2/wId2RVfRjX9OK4zjJe4kEN2D43VFvPXPQMCqwuEL0/fC00K+XGJZlWgn00R+XDgP
         Fs7Vq9aSu/TpX/rIaBhSKvETGHzo+n3Wt1w143ewscQbeZoK8yhqtu78CE+yp75/c09E
         ed2V6xnweXdvJwGcOFw7QBnOoCphiuOr+XVnFQMwh3gvBv7hrOA05mTUP2u62c6iqASd
         ksY5ymImyt1/anWpeXXb/s8D/7SYK1UF7th9s2oEnbn65alhHUnbJjXvneLay942Eviw
         vWGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j5Ct481F4wkRupatYcRj24aj8wwNlrEwHJD/XdnqyS4=;
        fh=gdS5Ay09wQDHC1Yx8L8HISum2aQwqJyLOt+ZQIHusqU=;
        b=HLDbqbaa3wNLETOI74ZLOQ3BIeTUf1soiE9p9Qj4Qk4ahuEH1a8T7GFzzYDiGSJg51
         KFU393sJdVWTMCVLo/P7tAewAgwaUTgTkI1rGM0nK1zh0+r4xh6eDADa0TfeQ+eeNbat
         v209oiYdk1Y6vdrCbDebB9k+FjELfVRU/0xC39/DAPX5ci68vUw+Z2ae9UzYNMp7r2mj
         aq5Yn7O58Ysr/gpHWDtV1Kg8DH0Ypeva4YM8cWm9kyeGtbgPNhTGS9UzdePb8pZxo3EE
         yYWQC8oBjPwZn+d01Oe/RBQ+dxAPCLzxUEImbutmnDpad32S7z4DAOcbLZMuthjn2iZ0
         jJoA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787661184; x=1788265984; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=j5Ct481F4wkRupatYcRj24aj8wwNlrEwHJD/XdnqyS4=;
        b=SaXiJqZwl3PlIW0f1XPXLfIUvNBA5I9X+d1FUfTfhtbX0PNujdLTO7vRnLLW44gjjA
         imz7dodHvFlVDxlZENH3vsv6usZQEj1tlL1JNsTNeFc9VQ1ltYOftLnFQ+UqKGN+7CYs
         wKk01Mky2vBW6ZeL/LpeNeSa4tX9qfdsQH5hzYAQvojUKV4Y94u9LwpThtOIeHLXLDkx
         +7Q4qT+mDNhNDNVlkFmBfve04b1Gep3k5uNIeMhD0Zei2B6VZQ9xyav+gYqrbb8LUMat
         MlaITARkmeZ6PXVWbRTf/fvAIAyQ4l3JRij8+YPK/6i8RrkqiyOQfxAqHU/JVuHk6JQW
         o8Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787661184; x=1788265984;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=j5Ct481F4wkRupatYcRj24aj8wwNlrEwHJD/XdnqyS4=;
        b=MXP4t0UihuAgOL4+4PQuhNffg8NGwn3Rigrq09pQOvzrYvQPAn3Wn+C74yxt9z9iIB
         VdZC9KAmH+0uRjLEIGILW1fsQbW88A9D4Wlpeans171GAXQj4jKJOgCtMoeQvoRzudIg
         hHg6GPv2DT8Ox82J8u/OuuBJEhCK6UfUfiM1gGIzCrj71RQFhGT5dCwzuIZ+aeEaoVhX
         ydms9IJdMARnSwY/iB3ta4FPRryWB44q+suU6PEWOC8Wh+RVDAswtFFg3Hb2Ig2DQWWX
         uhC0awY+TnEF3jmJADaeubtDgG3AHkjg+kxbIG77MPk9T73sfvqO3RiH5ZUQE5AdIlNy
         HBFw==
X-Forwarded-Encrypted: i=1; AHgh+RrXQePNXLAsRMeWvTu7dg7/BHpyZCT/V7SZbLMK+0Dv+tRKFCEKIdM0f1iJgUXpvDyV8158prg3no/hb+UthA==@lists.infradead.org
X-Gm-Message-State: AFuF++lYrJEE+EU6MDFDRoIfy0hgldkRhZQiQARETPWTNTl+ESJMLm17
	HZIq6CGYBx5PzsuP0wIpfKEJleLkII7BTE72tZzrd7W57LGERCG5qqyuWe4MtQ3c6+N5C3UB/JL
	3eMKAYlk9e3umOcNysKdesqRZ2YdXOEU=
X-Gm-Gg: AR+sD13xdxsqHmiumrv74m8b/rekzaiR1UKyYjakc2H8LC379hTPUI9YUVXjNjlD69B
	NdHDjpbkUbxRNmkQzFecM3A1e19APT/uhnHwOzgA6Lo2sovqHCLOm5C8NUO2uVmgPz7qzJMe7Al
	TRx2l2IK8T0w+CHlosy/VCVJTTimcvqHbeJ3z0X4B814OAXOc4T3qPmpmzaRYv77xv7C2peTNL+
	ASiIAK/TbN0+bGKCua+PAkxGfCkQFIzkbeEEW98hf4yqmYKBzdiQRkz5qcP9Ou9X0xKUYyR6UIg
	mBKFEurNhHPKRN8SKwTmQuMFiToYyc9a6C9us9xQv3wL9Q==
X-Received: by 2002:a05:690c:6b03:b0:7ba:f0d0:5e9b with SMTP id
 00721157ae682-849f4692ca7mr107963927b3.2.1787661184163; Tue, 25 Aug 2026
 05:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <f1805c2bce56c89d8ace35f67c665b24bab90965.1787568944.git.gahing@gahingwoo.com>
 <ed82f56171bbab8b150d3512412cda12e7e09a7d.1787568944.git.gahing@gahingwoo.com>
In-Reply-To: <ed82f56171bbab8b150d3512412cda12e7e09a7d.1787568944.git.gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Tue, 25 Aug 2026 14:32:52 +0200
X-Gm-Features: AcwNN1Xtzi2WJl1KccSUfPCnVd1JKytTLunfgDKRxF-zeJjSJm8murTNkgUrOck
Message-ID: <CAEWPSH7AcRb4uAnhmcL+kk3mQrgqYsQAYR=JQjJdkFGVK4qfHw@mail.gmail.com>
Subject: Re: [PATCH v9 05/13] dt-bindings: npu: rockchip: add rockchip,rk3576-rknn-core
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, 
	ogabbay@kernel.org, zhangqing@rock-chips.com, u.kleine-koenig@baylibre.com, 
	chaoyi.chen@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_053305_361244_1080F936 
X-CRM114-Status: GOOD (  17.86  )
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

SGkgSmlheGluZywKCk9uZSBzbWFsbCB0aGluZyBJIG5vdGljZWQgd2hpbGUgYXBwbHlpbmcgdGhl
IHNlcmllcyBmb3IgdGhlClJLMzU4OCByZS1ydW46IHRoZSBjb3ZlciBsZXR0ZXIgc2F5cyB0aGlz
IHBhdGNoIGNhcnJpZXMgYSBnaXQKbm90ZSBuYW1pbmcgdGhlIGJhc2UgYW5kIHRoZSBvbmUgcHJl
cmVxdWlzaXRlLCBidXQgdGhlIHBvc3RlZAptYWlsIGhhcyBubyBOb3RlcyBzZWN0aW9uIC0gcGVy
aGFwcyBmb3JtYXQtcGF0Y2ggcmFuIHdpdGhvdXQKLS1ub3Rlcy4gTWVudGlvbmluZyBpdCBvbmx5
IGJlY2F1c2UgUm9iJ3MgYm90IGFza2VkIG9uIHY4IGZvcgp0aGUgZGVwZW5kZW5jeSB0byBiZSBy
ZWNvcmRlZCBpbiB0aGUgcGF0Y2ggaXRzZWxmLCBhbmQgaXQgd291bGQKYmUgYSBwaXR5IHRvIGNv
bGxlY3QgdGhlIHNhbWUgcmVtYXJrIGFnYWluIG9uIHYxMC4KClJlZ2FyZHMsCklnb3IKCk9uIE1v
biwgQXVnIDI0LCAyMDI2IGF0IDE6MTDigK9QTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29v
LmNvbT4gd3JvdGU6Cj4KPiBUaGUgUkszNTc2IE5QVSBoYXMgdHdvIGNvcmVzIG9mIHRoZSBzYW1l
IFJLTk4gYmxvY2sgdGhlIFJLMzU4OCBiaW5kaW5nCj4gYWxyZWFkeSBkZXNjcmliZXMsIGJ1dCBp
dCB3aXJlcyB0aGVtIHVwIGRpZmZlcmVudGx5OiB0d28gZXh0cmEgQ0JVRgo+IGNsb2NrcywgdHdv
IHBvd2VyIGRvbWFpbnMgcGVyIGNvcmUsIGFuZCBhIHNpbmdsZSByZXNldCBpbnN0ZWFkIG9mIHR3
by4KPiBJdCBhbHNvIGhhcyBubyBOUFUgU1JBTSBzdXBwbHkuCj4KPiBXaWRlbiB0aGUgcHJvcGVy
dHkgcmFuZ2VzIHRvIGNvdmVyIGJvdGgsIHRoZW4gcGluIGVhY2ggU29DIGJhY2sgdG8gaXRzCj4g
b3duIHNoYXBlIGluIGFsbE9mIHNvIG5vdGhpbmcgbG9vc2VucyBmb3IgUkszNTg4LCBhbmQga2Vl
cCBzcmFtLXN1cHBseQo+IHJlcXVpcmVkIGZvciByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlIG9u
bHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4K
PiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBv
c3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICAuLi4vbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNv
cmUueWFtbCAgICAgICAgfCA0NyArKysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0NCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29y
ZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxy
azM1ODgtcmtubi1jb3JlLnlhbWwKPiBpbmRleCBjYWNhMmE0OTAuLjNiNjExYjY0YyAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJr
MzU4OC1ya25uLWNvcmUueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sCj4gQEAgLTIxLDYgKzIxLDcg
QEAgcHJvcGVydGllczoKPgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBlbnVtOgo+ICsgICAgICAt
IHJvY2tjaGlwLHJrMzU3Ni1ya25uLWNvcmUKPiAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtu
bi1jb3JlCj4KPiAgICByZWc6Cj4gQEAgLTMzLDE0ICszNCwxOCBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgICAtIGNvbnN0OiBjb3JlICMgTWFpbiBOUFUgY29yZSBwcm9jZXNzaW5nIHVuaXQgcmVnaXN0
ZXJzCj4KPiAgICBjbG9ja3M6Cj4gLSAgICBtYXhJdGVtczogNAo+ICsgICAgbWluSXRlbXM6IDQK
PiArICAgIG1heEl0ZW1zOiA2Cj4KPiAgICBjbG9jay1uYW1lczoKPiArICAgIG1pbkl0ZW1zOiA0
Cj4gICAgICBpdGVtczoKPiAgICAgICAgLSBjb25zdDogYWNsawo+ICAgICAgICAtIGNvbnN0OiBo
Y2xrCj4gICAgICAgIC0gY29uc3Q6IG5wdQo+ICAgICAgICAtIGNvbnN0OiBwY2xrCj4gKyAgICAg
IC0gY29uc3Q6IGFjbGtfY2J1Zgo+ICsgICAgICAtIGNvbnN0OiBoY2xrX2NidWYKPgo+ICAgIGlu
dGVycnVwdHM6Cj4gICAgICBtYXhJdGVtczogMQo+IEBAIC01MSwxMiArNTYsMTUgQEAgcHJvcGVy
dGllczoKPiAgICBucHUtc3VwcGx5OiB0cnVlCj4KPiAgICBwb3dlci1kb21haW5zOgo+IC0gICAg
bWF4SXRlbXM6IDEKPiArICAgIG1pbkl0ZW1zOiAxCj4gKyAgICBtYXhJdGVtczogMgo+Cj4gICAg
cmVzZXRzOgo+ICsgICAgbWluSXRlbXM6IDEKPiAgICAgIG1heEl0ZW1zOiAyCj4KPiAgICByZXNl
dC1uYW1lczoKPiArICAgIG1pbkl0ZW1zOiAxCj4gICAgICBpdGVtczoKPiAgICAgICAgLSBjb25z
dDogc3JzdF9hCj4gICAgICAgIC0gY29uc3Q6IHNyc3RfaAo+IEBAIC03NSw3ICs4Myw0MCBAQCBy
ZXF1aXJlZDoKPiAgICAtIHJlc2V0cwo+ICAgIC0gcmVzZXQtbmFtZXMKPiAgICAtIG5wdS1zdXBw
bHkKPiAtICAtIHNyYW0tc3VwcGx5Cj4gKwo+ICthbGxPZjoKPiArICAtIGlmOgo+ICsgICAgICBw
cm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoK
PiArICAgICAgICAgICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUKPiArICAgIHRo
ZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAgICAg
bWF4SXRlbXM6IDQKPiArICAgICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIG1heEl0ZW1z
OiA0Cj4gKyAgICAgICAgcG93ZXItZG9tYWluczoKPiArICAgICAgICAgIG1heEl0ZW1zOiAxCj4g
KyAgICAgICAgcmVzZXRzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDIKPiArICAgICAgICByZXNl
dC1uYW1lczoKPiArICAgICAgICAgIG1pbkl0ZW1zOiAyCj4gKyAgICAgIHJlcXVpcmVkOgo+ICsg
ICAgICAgIC0gc3JhbS1zdXBwbHkKPiArICAgIGVsc2U6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4g
KyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArICAgICAgICBjbG9j
ay1uYW1lczoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA2Cj4gKyAgICAgICAgcG93ZXItZG9tYWlu
czoKPiArICAgICAgICAgIG1pbkl0ZW1zOiAyCj4gKyAgICAgICAgcmVzZXRzOgo+ICsgICAgICAg
ICAgbWF4SXRlbXM6IDEKPiArICAgICAgICByZXNldC1uYW1lczoKPiArICAgICAgICAgIG1heEl0
ZW1zOiAxCj4gKyAgICAgICAgc3JhbS1zdXBwbHk6IGZhbHNlCj4KPiAgYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCj4KPiAtLQo+IDIuNDMuMAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
