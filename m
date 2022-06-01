Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF5DDC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 16:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZdqEvGuW4w/uDwa4gq4dQLXfFyd7zyO5xDvKExY7DY=; b=Wmj0cIS4twN1h7
	dEJ//rdCPgdATaEN0raX6jp+GvitdqTLR3IIF7SjrnXBYPHer1ntSq6zEvS3464pOuSBklhLsbLHz
	nowo9uLz/jqD/bxN8HVIX4quzJL/2guRu/EAIm+7l/f9tIc++pXwmaQeO3P6BSrJViUWpCChMN22F
	M1gtHFgwXggETnocWkU+vJvxmzuxhI+SRnl95uGzPsj63nmfujHmu8D+QaCdEEmLrD3Ic5FZQfzgS
	uz9uUzWlOSQ1fm+bvlsKWNFKyKQeyT5eq2yPr8UHcg+KbXOWcL348IMtXJhZqX6oGdyn4hrYwAeTe
	XDLjmJKZX82FEB1kT1YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwR22-00H3OJ-KM; Wed, 01 Jun 2022 16:17:14 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwR1z-00H3Me-Bj; Wed, 01 Jun 2022 16:17:13 +0000
Received: by mail-ej1-x62e.google.com with SMTP id q21so4831776ejm.1;
        Wed, 01 Jun 2022 09:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pWC762eypj2bjNl4hQW+7FNPu195AwmDMFJhzzFNCpM=;
        b=G3f5RaE8elRiEIhW7E9mRL9MCs3ZC4+jrYnG816uzfgX2ibjozqeMY/uXuI4lIos4x
         y+haneV4Vg0pwa3FJZiUB7B1Z0sS146wVEUHjctJCEIx/1Zyty50DgZgc4gZrkO26e2W
         xTRPwkOT9metOf3XxWdUBjq+ruxGbqY0aELegGMHqPfPl78LnR6QX6fYP1+aCP7cRf6D
         sqMR+wATpGqL64B15POXcxgVMhdkzRpiLk6RLpOCw3Kn7OrGmAnmyD/ANhJbvqnl5zJE
         upjkNhx9QBAx3RXsdWNzXVegLrbhKEEBvT7/KaxZ3voxIs6xWDx7oX4t16xJ2NQXZXqk
         vjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pWC762eypj2bjNl4hQW+7FNPu195AwmDMFJhzzFNCpM=;
        b=FBjK3PoaBb/6ylKo/qgWKPNBqzsx0c3lCq4kGheN+6vJLV3nddlZ/nDfPg4HKa6D/D
         +YrUlexani0CKAheMHBi8OVkGdTuaZSduaImdGl4yVlYgrY0vr5jaC7mvmyzq3VNQgdJ
         pXs34iCIE3zXbbi40W0cmALID6eJ6LTDy3w8wHvzixkMlA99R6rHscFAfuUIJvSj2Nnf
         c+j7hMgEJV0qgx34zLCc8k4wW7YwKxAmDcAeLjiAm3ZPTzmbvbFbyGnrTELlR6f3YuXq
         jYu/AcoLG8W2uZSJz0P+4APtbfbZvo7CudG7mA/Ucmgyuw2Iu63k0C/AYoNnVqTW7x7G
         hzMA==
X-Gm-Message-State: AOAM532I8PoTSqLOm4KyG9dB3H4Fjbx0VfTQuvleaVucTMYv/776JfNp
	h2dPNN312efaI6l4X+w/7BY=
X-Google-Smtp-Source: ABdhPJxUrWuyQnIx8N3FchlVvwbKdGrhbP5RG/Nnspz9UY5pBWWqSdVuyXoKdi3JoFOTDlmH5LOARg==
X-Received: by 2002:a17:906:7948:b0:6f7:d5a3:3b91 with SMTP id l8-20020a170906794800b006f7d5a33b91mr292819ejo.354.1654100227631;
        Wed, 01 Jun 2022 09:17:07 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id f1-20020a056402160100b0042de839eb2csm1164086edv.27.2022.06.01.09.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 09:17:07 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: Re: [PATCH v6 16/17] media: uapi: Change data_bit_offset definition
Date: Wed, 01 Jun 2022 18:17:05 +0200
Message-ID: <7385576.EvYhyI6sBW@kista>
In-Reply-To: <3175529.44csPzL39Z@kista>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com> <20220527143134.3360174-17-benjamin.gaignard@collabora.com> <3175529.44csPzL39Z@kista>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_091711_446746_6B3BC4FD 
X-CRM114-Status: GOOD (  22.64  )
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

RG5lIG5lZGVsamEsIDI5LiBtYWogMjAyMiBvYiAwODo0NTo1NyBDRVNUIGplIEplcm5laiDFoGty
YWJlYyBuYXBpc2FsKGEpOgo+IERuZSBwZXRlaywgMjcuIG1haiAyMDIyIG9iIDE2OjMxOjMzIENF
U1QgamUgQmVuamFtaW4gR2FpZ25hcmQgbmFwaXNhbChhKToKPiA+ICdGLjcuMy42LjEgR2VuZXJh
bCBzbGljZSBzZWdtZW50IGhlYWRlciBzeW50YXgnIHNlY3Rpb24gb2YgSEVWQwo+ID4gc3BlY2lm
aWNhdGlvbiBkZXNjcmliZXMgdGhhdCBhIHNsaWNlIGhlYWRlciBhbHdheXMgZW5kIGFsaWduZWQg
b24KPiA+IGJ5dGUgYm91bmRhcnksIHRoZXJlZm9yZSB3ZSBvbmx5IG5lZWQgdG8gcHJvdmlkZSB0
aGUgZGF0YSBvZmZzZXQgaW4gYnl0ZXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAg
RG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0
IHwgNCArKy0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
aDI2NS5jICAgICAgICAgIHwgMiArLQo+ID4gIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQgKystLQo+ID4gIDMgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0
IGIvCj4gRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0Cj4gPiBpbmRleCA0OGE4ODI1YTAwMWIuLjM3MDc5NTgxYzY2MSAxMDA2NDQKPiA+IC0t
LSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVj
LnJzdAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQt
Y3RybHMtY29kZWMucnN0Cj4gPiBAQCAtMzAwOCw4ICszMDA4LDggQEAgZW51bSB2NGwyX21wZWdf
dmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4gPiAgICAgICAgLSBgYGJpdF9zaXpl
YGAKPiA+ICAgICAgICAtIFNpemUgKGluIGJpdHMpIG9mIHRoZSBjdXJyZW50IHNsaWNlIGRhdGEu
Cj4gPiAgICAgICogLSBfX3UzMgo+ID4gLSAgICAgIC0gYGBkYXRhX2JpdF9vZmZzZXRgYAo+ID4g
LSAgICAgIC0gT2Zmc2V0IChpbiBiaXRzKSB0byB0aGUgdmlkZW8gZGF0YSBpbiB0aGUgY3VycmVu
dCBzbGljZSBkYXRhLgo+ID4gKyAgICAgIC0gYGBkYXRhX2J5dGVfb2Zmc2V0YGAKPiA+ICsgICAg
ICAtIE9mZnNldCAoaW4gYnl0ZXMpIHRvIHRoZSB2aWRlbyBkYXRhIGluIHRoZSBjdXJyZW50IHNs
aWNlIGRhdGEuCj4gPiAgICAgICogLSBfX3UzMgo+ID4gICAgICAgIC0gYGBudW1fZW50cnlfcG9p
bnRfb2Zmc2V0c2BgCj4gPiAgICAgICAgLSBTcGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbnRyeSBw
b2ludCBvZmZzZXQgc3ludGF4IGVsZW1lbnRzIGluIHRoZSAKPiBzbGljZSBoZWFkZXIuCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2
NS5jIGIvZHJpdmVycy8KPiBzdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5j
Cj4gPiBpbmRleCA0MTE2MDE5NzUxMjQuLjgzNTQ1NDIzOWY3MyAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jCj4gPiBAQCAt
NDA1LDcgKzQwNSw3IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19oMjY1X3NldHVwKHN0cnVjdCBjZWRy
dXNfY3R4ICpjdHgsCj4gPiAgCS8qIEluaXRpYWxpemUgYml0c3RyZWFtIGFjY2Vzcy4gKi8KPiA+
ICAJY2VkcnVzX3dyaXRlKGRldiwgVkVfREVDX0gyNjVfVFJJR0dFUiwgCj4gVkVfREVDX0gyNjVf
VFJJR0dFUl9JTklUX1NXREVDKTsKPiA+ICAKPiA+IC0JY2VkcnVzX2gyNjVfc2tpcF9iaXRzKGRl
diwgc2xpY2VfcGFyYW1zLT5kYXRhX2JpdF9vZmZzZXQpOwo+ID4gKwljZWRydXNfaDI2NV9za2lw
X2JpdHMoZGV2LCBzbGljZV9wYXJhbXMtPmRhdGFfYnl0ZV9vZmZzZXQgKiA4KTsKPiAKPiBXaGls
ZSBpdCdzIHRydWUgdGhhdCBhY3R1YWwgZGF0YSBzdGFydHMgb24gOC1iaXQgYWxpZ25lZCBhZGRy
ZXNzLCBDZWRydXMgZm9yIAo+IHNvbWUgcmVhc29uIG5lZWRzIG9mZnNldCB3aGljaCBwb2ludHMg
YXQgdGhlIGVuZCBvZiB0aGUgaGVhZGVyLCBiZWZvcmUgCj4gYWxpZ25tZW50LiBUaGVyZSBpcyB2
ZXJ5IHNpbXBsZSB3YXkgdG8gZGV0ZXJtaW5lIHRoYXQsIGJ1dCB1bmZvcnR1bmF0ZWx5IAp0aGlz
IAo+IG1lYW5zIHJlYWRpbmcgc291cmNlIGJ1ZmZlci4KPiAKPiBJbiBzaG9ydCwgYWJvdmUgY29k
ZSB3b24ndCB3b3JrLiBJJ2xsIHByb3ZpZGUgYSBmaXguCgpQbGVhc2UgaW5jbHVkZSBmb2xsb3dp
bmcgZml4IGh0dHA6Ly9peC5pby8zWjh4IG90aGVyd2lzZSBDZWRydXMgd2lsbCBmYWlsIHRvIApk
ZWNvZGUgc2xpY2UuCgpPdGhlciB0aGFuIGZpeCBpbiBwcmV2aW91cyBlLW1haWwgYW5kIHRoaXMg
b25lLCBjb2RlIGxvb2tzIGdvb2QgYW5kIEknbGwgYmUgCmFibGUgdG8gYWRkIG1pc3NpbmcgZnVu
Y3Rpb25hbGl0eSB0byBDZWRydXMgd2l0aG91dCBtdWNoIHRyb3VibGUgaW4gZm9sbG93IHVwIApz
ZXJpZXMuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAKPiA+ICAKPiA+ICAJLyogQml0c3RyZWFt
IHBhcmFtZXRlcnMuICovCj4gPiAgCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRpYS9oZXZj
LWN0cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+ID4gaW5kZXggOWFiY2ExYTc1
YmQ0Li45MzZmZjY5Mzk2N2IgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3Ry
bHMuaAo+ID4gKysrIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiA+IEBAIC0zMTIsNyAr
MzEyLDcgQEAgc3RydWN0IHY0bDJfaGV2Y19wcmVkX3dlaWdodF90YWJsZSB7Cj4gPiAgICogVjRM
Ml9DVFJMX0ZMQUdfRFlOQU1JQ19BUlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQu
Cj4gPiAgICoKPiA+ICAgKiBAYml0X3NpemU6IHNpemUgKGluIGJpdHMpIG9mIHRoZSBjdXJyZW50
IHNsaWNlIGRhdGEKPiA+IC0gKiBAZGF0YV9iaXRfb2Zmc2V0OiBvZmZzZXQgKGluIGJpdHMpIHRv
IHRoZSB2aWRlbyBkYXRhIGluIHRoZSBjdXJyZW50IApzbGljZSAKPiBkYXRhCj4gPiArICogQGRh
dGFfYnl0ZV9vZmZzZXQ6IG9mZnNldCAoaW4gYnl0ZXMpIHRvIHRoZSB2aWRlbyBkYXRhIGluIHRo
ZSBjdXJyZW50IAo+IHNsaWNlIGRhdGEKPiA+ICAgKiBAbnVtX2VudHJ5X3BvaW50X29mZnNldHM6
IHNwZWNpZmllcyB0aGUgbnVtYmVyIG9mIGVudHJ5IHBvaW50IG9mZnNldCAKc3ludGF4Cj4gPiAg
ICoJCQkgICAgIGVsZW1lbnRzIGluIHRoZSBzbGljZSBoZWFkZXIuCj4gPiAgICogQG5hbF91bml0
X3R5cGU6IHNwZWNpZmllcyB0aGUgY29kaW5nIHR5cGUgb2YgdGhlIHNsaWNlIChCLCBQIG9yIEkp
Cj4gPiBAQCAtMzU2LDcgKzM1Niw3IEBAIHN0cnVjdCB2NGwyX2hldmNfcHJlZF93ZWlnaHRfdGFi
bGUgewo+ID4gICAqLwo+ID4gIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19zbGljZV9wYXJhbXMgewo+
ID4gIAlfX3UzMgliaXRfc2l6ZTsKPiA+IC0JX191MzIJZGF0YV9iaXRfb2Zmc2V0Owo+ID4gKwlf
X3UzMglkYXRhX2J5dGVfb2Zmc2V0Owo+ID4gIAlfX3UzMgludW1fZW50cnlfcG9pbnRfb2Zmc2V0
czsKPiA+ICAJLyogSVNPL0lFQyAyMzAwOC0yLCBJVFUtVCBSZWMuIEguMjY1OiBOQUwgdW5pdCBo
ZWFkZXIgKi8KPiA+ICAJX191OAluYWxfdW5pdF90eXBlOwo+ID4gLS0gCj4gPiAyLjMyLjAKPiA+
IAo+ID4gCj4gCj4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
