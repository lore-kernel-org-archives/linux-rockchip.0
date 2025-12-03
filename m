Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B18D12D69
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 14:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx0Yp1wCBgZhs634hENaAKRKEx1qiDde+jLAZgtnkMM=; b=JXAymgKPAgYfMP
	7wrKROUgkYNjOmMOv4a6rDBMhFXCsfl91fd+C1u3BOztnY7l2BeeTzVUaSqiKj+V3zo2f6gIAnvAY
	uepdcSLw5XnDjZnnBW9Ov0/5OLyZaqtcos2vBn+Rz/v6vrEF+rk+Wit0iYT9xvgaDBLiGKsdPsYBU
	8hDlEJFTAzi08Sy06OoE0c2p2AkR9acqYoqcRfrdq+/wemaurb0hQOJgoKmssMize/dJZLD8FwP3N
	4P9CpzVrbf6+ZDhiaBs8owSSXWumx7OCHzQaXN0vW1NUnQzPKemHtI/FewSEJIjJM12C7jBO3rBWc
	iV8mrT6Uhm2cvn8hN72g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQnaO-00000006dHx-1VCo;
	Wed, 03 Dec 2025 14:12:04 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQnaL-00000006dGw-3Jtz
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:12:03 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4edb7c8232aso85836761cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 06:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764771120; x=1765375920; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjikvMbBLAvP8JTEk2DJsCaYzW4mbrgZZwpCXseTwmY=;
        b=en3j9fDqSHDbnYBJ8vkf1ffno9i2dvt3IGRP/TIdRvvCX+wAJQDXd4Si1Sf0vTQxFP
         BSOCxSKQY+UoI4uDk1DwkB1ryBhEfL7e9AlkRJDTSc2SKzSf3PIN506/z92k6vDWYe0C
         oFfXIdVAfJqkztM/rvY/rI6xGp1tcEuGeBoo0wrU2+eIAoFukRhvgYnpnvDXGQ8d0Agm
         LL3MdYIJIkCb5lA/+5Kdjx78jc4rRrj441mlAB90+yE8mNhzZnRiUXGGWaBpuPAJwTKc
         ZlZsZSquGHDzHHirkk8Q8k8fyRgQ7R0pwMc2T/WzfTGhJbd4yKDGzJfq/xq4SuOMn6lw
         6txA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764771120; x=1765375920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TjikvMbBLAvP8JTEk2DJsCaYzW4mbrgZZwpCXseTwmY=;
        b=EBNPx95PjWax/lPFWfccTLu+IeV/QbSYFh9O9ZoqQUm3WytApZQoCANMIhhHGI8+by
         nobQ7mXQgTGUHuw2TIAvQRqRc7D7MKINT/Wck+2RICjGKd8V+7zd7MWLNC99d+F3z6o8
         +AF6BtZixurBY3hS7BI7/8zpR71Ej7Ij0308TtoK2ciVzKbh2qZDMKDQf2lpKV3qi0dB
         QIJWJ4Utsu4+Iv2ldB719E3Bv3u7AKV/+rnYT4TbUAAPjb8Jat8BNDG1szTYYssSigI0
         YnyH3/BpmG7A5P68idka9PMRFz2DZtb6VNLkKLq8nHhzHEazk+TzbeudRr8pBs7ysJQ2
         Bl1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVa4t9eH/ALkvRPDC3dV4tfptp9N5D8A1p/5WfE/O2vCkzELH5SLM8EQpsOwAV1RvM+/0lnU84Qn03MhS9WoA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxa3mPFld+dULt52PF1cVOOwCaObnHtEqisbWMj4quZNyGATvwX
	7Hn8ruNw/MafT6gHRU30++Lcakn2wv9kkbzPjTUIHurLa8wSr8Dp+kuaiToCLw0CdUaiUjasXcx
	upHKEvGu3qvhPWcYZF9OtKU3KkAAHW7o=
X-Gm-Gg: ASbGncudiN9OYAPRwAFq3F+7Lcr1x2bWQC5mamAgVJYPVf2qEBmBE/WwczMgbYNAufc
	AqZc7XAa2JSRiaG3paPr5NSj6wJ0KGiigsVbtsv/NrOys2K1iFBJMnTUEPEPgxz1bu60TvhDUkH
	Wo2pMQRTMToywJontvD6NUaU9FqLa9uWtZ3LbzuWPsiIvMV1IJpd1dUX7ZjCsW1PsnkSxf47rwZ
	o+sytBga94gdm9GW0TKAJmj/PnCefwSARj+gnr25XOs/4zI15jmvUPEeKphHr0iB2m2A3g=
X-Google-Smtp-Source: AGHT+IHYrT4T9dL1OLnbfPDjT28JMb2318J5/B3eoFhCblccxFHS7LXQDPLZwahRE4rYRyKabmK+IYyCL27PUavzRcU=
X-Received: by 2002:ac8:7c4b:0:b0:4ee:1db1:a61b with SMTP id
 d75a77b69052e-4f0176e0e22mr32108741cf.75.1764771119925; Wed, 03 Dec 2025
 06:11:59 -0800 (PST)
MIME-Version: 1.0
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
In-Reply-To: <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 3 Dec 2025 15:11:47 +0100
X-Gm-Features: AWmQ_bkzp4_vseBr9tvcxqOGhh90DbsGff_6vKvilwsSsGnyg33iWaxt34V14Bc
Message-ID: <CAAMcf8AtH_WmM=EBNkcYyD7otYjk6YuuHHCVHUi4n+viOpu5WA@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
To: Linus Walleij <linusw@kernel.org>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_061201_845852_5A1BFD15 
X-CRM114-Status: GOOD (  30.81  )
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

T24gVHVlLCBEZWMgMiwgMjAyNSBhdCAxMDowM+KAr1BNIExpbnVzIFdhbGxlaWogPGxpbnVzd0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IGNvbW1pdCBjOWIxMTUwYTY4ZDkzNjJhMDgyNzYwOWZjMGRj
MTY2NGMwZDhiZmUxCj4gImRybS9hdG9taWMtaGVscGVyOiBSZS1vcmRlciBicmlkZ2UgY2hhaW4g
cHJlLWVuYWJsZSBhbmQgcG9zdC1kaXNhYmxlIgo+IGNhdXNlZCBhIHNlcmllcyBvZiByZWdyZXNz
aW9ucyBpbiBhbGwgcGFuZWxzIHRoYXQgc2VuZAo+IERTSSBjb21tYW5kcyBpbiB0aGVpciAucHJl
cGFyZSgpIGFuZCAudW5wcmVwYXJlKCkKPiBjYWxsYmFja3Mgd2hlbiB1c2VkIHdpdGggdGhlIFJv
Y2tjaGlwIGRyaXZlci4KPgo+IEFzIHRoZSBDUlRDIGlzIG5vIGxvbmdlciBvbmxpbmUgYXQgYnJp
ZGdlX3ByZV9lbmFibGUoKQo+IGFuZCBnb25lIGF0IGJyaWdlX3Bvc3RfZGlzYWJsZSgpIHdoaWNo
IG1hcHMgdG8gdGhlIHBhbmVsCj4gYnJpZGdlIC5wcmVwYXJlKCkvLnVucHJlcGFyZSgpIGNhbGxi
YWNrcywgYW55IENSVEMgdGhhdAo+IGVuYWJsZS9kaXNhYmxlIHRoZSBEU0kgdHJhbnNtaXR0ZXIg
aW4gaXQncyBlbmFibGUvZGlzYWJsZQo+IGNhbGxiYWNrcyB3aWxsIGJlIHVuYWJsZSB0byBzZW5k
IGFueSBEU0kgY29tbWFuZHMgaW4gdGhlCj4gLnByZXBhcmUoKSBhbmQgLnVucHJlcGFyZSgpIGNh
bGxiYWNrcy4KPgo+IEhvd2V2ZXIgdGhlIFJvY2tjaGlwIGRyaXZlciBkZWZpbml0ZWx5IG5lZWQg
dGhlIENSVEMgdG8gYmUKPiBlbmFibGVkIGR1cmluZyAucHJlcGFyZSgpLy51bnByZXBhcmUoKS4K
Pgo+IFNvbHZlIHRoaXMgYnkgaW1wbGVtZW50aW5nIGEgY3VzdG9tIGNvbW1pdCB0YWlsIGZ1bmN0
aW9uCj4gaW4gdGhlIFJvY2tjaGlwIGRyaXZlciB0aGF0IGFsd2F5cyBlbmFibGVzIHRoZSBDUlRD
IGZpcnN0Cj4gYW5kIGRpc2FibGVzIGl0IGxhc3QsIHVzaW5nIHRoZSBuZXdseSBleHBvcnRlZCBo
ZWxwZXJzLgo+Cj4gVGhpcyBwYXRjaCBpcyBhbiBlZGl0ZWQgY2FyYm9uLWNvcHkgb2YgdGhlIHNh
bWUgcGF0Y2ggdG8KPiB0aGUgU1QtRXJpY3Nzb24gTUNERSBkcml2ZXIuCj4KPiBMaW5rOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FBTWNmOERpOHNjX1hWWkFuelE5c1VpVWYtQXl2ZzJ5
amh4MmRXbXZ2Q25mRjNwQlJBQG1haWwuZ21haWwuY29tLwo+IFJlcG9ydGVkLWJ5OiBBcmFkaHlh
IEJoYXRpYSA8YXJhZGh5YS5iaGF0aWFAbGludXguZGV2Pgo+IFJlcG9ydGVkLWJ5OiBWaWNlbnRl
IEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTGludXMgV2FsbGVp
aiA8bGludXN3QGtlcm5lbC5vcmc+Cj4gLS0tCj4gUm9ja2NoaXAgcGVvcGxlOiBjYW4geW91IHBs
ZWFzZSB0ZXN0IHRoaXMgcGF0Y2ggKGFsb25nCj4gd2l0aCBwYXRjaCAxIG9mIGNvdXJzZSkuCgpI
aSBMaW51cywKaSd2ZSBhcHBsaWVkIGFsbCA0IHBhdGNoZXMgZnJvbSB0aGUgVjYgcGF0Y2ggc2Vy
aWVzIG9uIHRvcCBvZiB2Ni4xOAphbmQgdGVzdGVkIG9uIHRoZSByazMzOTktZ3J1LWtldmluIHBs
YXRmb3JtLgpJdCBpbmRlZWQgZml4ZXMgdGhlIHJlcG9ydGVkIGlzc3VlLgoKVGVzdGVkLWJ5OiBW
aWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+CgpSZWdhcmRzLAogIFZpY2VudGUuCgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCA1MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2ZiLmMKPiBpbmRleCAyZjQ2OWQzNzAwMjEuLjYzZTUwZWEwMDkyMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKPiBAQCAtMjQsOCAr
MjQsNTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXJfZnVuY3Mgcm9ja2No
aXBfZHJtX2ZiX2Z1bmNzID0gewo+ICAgICAgICAgLmRpcnR5ICAgICAgICAgPSBkcm1fYXRvbWlj
X2hlbHBlcl9kaXJ0eWZiLAo+ICB9Owo+Cj4gKy8qCj4gKyAqIFRoaXMgY29tbWl0IHRhaWwgZXhw
bGljaXRseSBjb3BpZXMgYW5kIGNoYW5nZXMgdGhlIGJlaGF2aW91ciBvZgo+ICsgKiB0aGUgcmVs
YXRlZCBjb3JlIERSTSBhdG9taWMgaGVscGVyIGluc3RlYWQgb2YgdHJ5aW5nIHRvIG1ha2UKPiAr
ICogdGhlIGNvcmUgaGVscGVycyBvdmVybHkgZ2VuZXJpYy4KPiArICovCj4gK3N0YXRpYyB2b2lk
IHJvY2tjaGlwX2RybV9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
KnN0YXRlKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmRl
djsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogVmFyaWFudCBvZiBkcm1fYXRvbWljX2hl
bHBlcl9jb21taXRfbW9kZXNldF9kaXNhYmxlcygpCj4gKyAgICAgICAgKiB0aGF0IHdpbGwgZGlz
YWJsZSBhbmQgcG9zdC1kaXNhYmxlIGFsbCBicmlkZ2VzIEJFRk9SRQo+ICsgICAgICAgICogZGlz
YWJsaW5nIHRoZSBDUlRDLgo+ICsgICAgICAgICovCj4gKyAgICAgICBkcm1fYXRvbWljX2hlbHBl
cl9jb21taXRfZW5jb2Rlcl9icmlkZ2VfZGlzYWJsZShkZXYsIHN0YXRlKTsKPiArICAgICAgIGRy
bV9hdG9taWNfaGVscGVyX2NvbW1pdF9lbmNvZGVyX2JyaWRnZV9wb3N0X2Rpc2FibGUoZGV2LCBz
dGF0ZSk7Cj4gKyAgICAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfY3J0Y19kaXNhYmxlKGRl
diwgc3RhdGUpOwo+ICsgICAgICAgZHJtX2F0b21pY19oZWxwZXJfdXBkYXRlX2xlZ2FjeV9tb2Rl
c2V0X3N0YXRlKGRldiwgc3RhdGUpOwo+ICsgICAgICAgZHJtX2F0b21pY19oZWxwZXJfY2FsY190
aW1lc3RhbXBpbmdfY29uc3RhbnRzKHN0YXRlKTsKPiArICAgICAgIGRybV9hdG9taWNfaGVscGVy
X2NvbW1pdF9jcnRjX3NldF9tb2RlKGRldiwgc3RhdGUpOwo+ICsKPiArICAgICAgIC8qCj4gKyAg
ICAgICAgKiBWYXJpYW50IG9mIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoKQo+ICsgICAgICAgICogdGhhdCB3aWxsIGVuYWJsZSB0aGUgQ1JUQyBCRUZPUkUgcHJlLWVu
YWJsaW5nIGFuZAo+ICsgICAgICAgICogZW5hYmxpbmcgdGhlIGJyaWRnZXMuCj4gKyAgICAgICAg
Ki8KPiArICAgICAgIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9jcnRjX2VuYWJsZShkZXYsIHN0
YXRlKTsKPiArICAgICAgIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9lbmNvZGVyX2JyaWRnZV9w
cmVfZW5hYmxlKGRldiwgc3RhdGUpOwo+ICsgICAgICAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0
X2VuY29kZXJfYnJpZGdlX2VuYWJsZShkZXYsIHN0YXRlKTsKPiArICAgICAgIGRybV9hdG9taWNf
aGVscGVyX2NvbW1pdF93cml0ZWJhY2tzKGRldiwgc3RhdGUpOwo+ICsKPiArICAgICAgIGRybV9h
dG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMoZGV2LCBzdGF0ZSwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgRFJNX1BMQU5FX0NPTU1JVF9BQ1RJVkVfT05MWSk7Cj4g
Kwo+ICsgICAgICAgZHJtX2F0b21pY19oZWxwZXJfZmFrZV92Ymxhbmsoc3RhdGUpOwo+ICsKPiAr
ICAgICAgIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9od19kb25lKHN0YXRlKTsKPiArCj4gKyAg
ICAgICBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92YmxhbmtzKGRldiwgc3RhdGUpOwo+ICsK
PiArICAgICAgIGRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgc3RhdGUpOwo+
ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9tb2RlX2NvbmZpZ19oZWxwZXJfZnVu
Y3Mgcm9ja2NoaXBfbW9kZV9jb25maWdfaGVscGVycyA9IHsKPiAtICAgICAgIC5hdG9taWNfY29t
bWl0X3RhaWwgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9ycG0sCj4gKyAgICAgICAv
Kgo+ICsgICAgICAgICogVXNpbmcgdGhpcyBmdW5jdGlvbiBpcyBuZWNlc3NhcnkgdG8gY29tbWl0
IGF0b21pYyB1cGRhdGVzCj4gKyAgICAgICAgKiB0aGF0IG5lZWQgdGhlIENSVEMgdG8gYmUgZW5h
YmxlZCBiZWZvcmUgYSBjb21taXQsIGFzIGlzCj4gKyAgICAgICAgKiB0aGUgY2FzZSB3aXRoIGUu
Zy4gRFNJIGRpc3BsYXlzLgo+ICsgICAgICAgICovCj4gKyAgICAgICAuYXRvbWljX2NvbW1pdF90
YWlsID0gcm9ja2NoaXBfZHJtX2F0b21pY19jb21taXRfdGFpbCwKPiAgfTsKPgo+ICBzdGF0aWMg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqCj4KPiAtLQo+IDIuNTEuMQo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
