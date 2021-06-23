Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7323C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 08:57:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B778611AD
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 08:57:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B778611AD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=monstr.eu
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2et1LaocPL5DG0h7UqfAQIwjHkhbUS8nPOUFArvmWpc=; b=EUhwonEZvVa/JV
	hKRL7xA98DpantAaZI0zIudVX0XDvfn7VeAZCcqFp0xlzKXN+m5HXMW0JC0TsaPTS8ISsRSfjou9l
	rNT5GQQdHOhVcVdP+2XHU3hB/A/ekOp1luu7ng4exTa3frev2a1bZRAu4SvCi/IH4UICJK5faDgNn
	aR5Z7uTE0ZQxjRs52A4LXjIGN+zFdtNYTLz7OYKD5+vG8moyH9xwIf/bJVvEHYdJbA0/E5gyUc+A0
	NLHJDzXD6egl6y/cIse/U/5SxnfL72fGcvVC6Rlm3bCeGFh5IC29S+UGRHRPxYHoBveBG661cU/WK
	otZ7o6J3Ts60V4U/9cSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvyhj-00A0og-M1; Wed, 23 Jun 2021 08:57:51 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvyhg-00A0mo-5l
 for linux-rockchip@lists.infradead.org; Wed, 23 Jun 2021 08:57:50 +0000
Received: by mail-ej1-x630.google.com with SMTP id nd37so2862263ejc.3
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Jun 2021 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z6Z3rnoFwy3s+OnHi/sH1rvXTGduUYkOOkAbeaIPw4Q=;
 b=tdK9uAJWdmT+cTqTX4ozHwlgRi7wW7OUcIGpx+5Br2fodFNa+MnfUQZVAzgz1DMfXp
 n/6yy9sAzllko9mIwsv87gD1kCOH5+UvzuTO8Ov4YmQvbrKg9vhNxEnX9Bb3xpiNP2fH
 k9Oyze3A8ShMVN/bVHL82sBkwKgirt++Dw9dhx7H9AShjZynKsDqAx3QjkNyy+S3seYa
 O7aOzg7Mj0Cm2KxHYiHvi5dJSHR99JkBwPvAeetXr4PIjVliCzIaKYRVlGsyYaoAOytV
 AXOwIKzGUy2+Qw0GsQqKp2vE+Hbxv9yib/h1U+C6vqKY5DAWNhTnHvHGn5ed0S9mxQ6J
 iM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z6Z3rnoFwy3s+OnHi/sH1rvXTGduUYkOOkAbeaIPw4Q=;
 b=gfa05KM3UXslv1G8TmGScNRkQ+M5qvDsOLX+62x0c8TsWZXj24IgPhbi0tr907rNRC
 cQ4G4Dft4s3PVRKFTNCkfR1AcP4x7CK0f6y9q1Df+ou0LbL3ZD5x/Hl8UyUy2rrUjbty
 GwpjpJmQiUnHWQRfmU1XiGKClyUyX/QxD2ON5CjkohN/pdIQcSN8pqm70eezUypn7htq
 2yYpoj99lPtTVyxJ0dWu307p3muuMFv806IMy2siQhTeWvcqRfDFZnXojphpDDY09W9g
 hqcQmLOnTKQzdfeoqYTPtqGtdiWGWrchM22/BN+jRgCVEHBgYzHJtv0xKn1H/jGFYjtW
 aGWA==
X-Gm-Message-State: AOAM5325JhN1Rbb4K+TccPI/HKcIKxFRU/6hCRpJa0gryi/T6MIUDvWG
 0jqY1BynBDnqrJPARN0KrLkpHIXUnFxJ5t1JLVb31Q==
X-Google-Smtp-Source: ABdhPJwy+pM9oZ1iyRoxUOJy65b7IRacVpAEIpAEHz2ud7J2MhpMBy54g7b0sAw4obchFDygfdWC6jUFii9npycxr4w=
X-Received: by 2002:a17:906:ca4a:: with SMTP id
 jx10mr8892678ejb.200.1624438666647; 
 Wed, 23 Jun 2021 01:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-2-krzk@kernel.org>
In-Reply-To: <20200902150643.14839-2-krzk@kernel.org>
From: Michal Simek <monstr@monstr.eu>
Date: Wed, 23 Jun 2021 10:57:35 +0200
Message-ID: <CAHTX3dK+M9eg+Xod9tYHiEXY_igjO6iocaO=e1Frqd1kzPKTrw@mail.gmail.com>
Subject: Re: [PATCH 2/9] i2c: xiic: Simplify with dev_err_probe()
To: Krzysztof Kozlowski <krzk@kernel.org>, Wolfram Sang <wsa@the-dreams.de>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Sekhar Nori <nsekhar@ti.com>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>, 
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@st.com>, Peter Rosin <peda@axentia.se>,
 Wolfram Sang <wsa@kernel.org>, 
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_015748_313303_0B58E847 
X-CRM114-Status: GOOD (  18.02  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

c3QgMi4gOS4gMjAyMCB2IDE3OjEwIG9kZXPDrWxhdGVsIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gbmFwc2FsOgo+Cj4gQ29tbW9uIHBhdHRlcm4gb2YgaGFuZGxpbmcgZGVm
ZXJyZWQgcHJvYmUgY2FuIGJlIHNpbXBsaWZpZWQgd2l0aAo+IGRldl9lcnJfcHJvYmUoKS4gIExl
c3MgY29kZSBhbmQgdGhlIGVycm9yIHZhbHVlIGdldHMgcHJpbnRlZC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy14aWljLmMgfCA5ICsrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aTJjL2J1c3Nlcy9pMmMteGlpYy5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy14aWljLmMKPiBp
bmRleCA5MGMxYzM2MjM5NGQuLmE5NzQzOGYzNWM1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXhpaWMuYwo+ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMteGlpYy5j
Cj4gQEAgLTc4NywxMSArNzg3LDEwIEBAIHN0YXRpYyBpbnQgeGlpY19pMmNfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIGluaXRfd2FpdHF1ZXVlX2hlYWQoJmky
Yy0+d2FpdCk7Cj4KPiAgICAgICAgIGkyYy0+Y2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYs
IE5VTEwpOwo+IC0gICAgICAgaWYgKElTX0VSUihpMmMtPmNsaykpIHsKPiAtICAgICAgICAgICAg
ICAgaWYgKFBUUl9FUlIoaTJjLT5jbGspICE9IC1FUFJPQkVfREVGRVIpCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiaW5wdXQgY2xvY2sgbm90IGZvdW5kLlxu
Iik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGkyYy0+Y2xrKTsKPiAtICAgICAg
IH0KPiArICAgICAgIGlmIChJU19FUlIoaTJjLT5jbGspKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKGkyYy0+Y2xrKSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImlucHV0IGNsb2NrIG5vdCBmb3VuZC5cbiIp
Owo+ICsKPiAgICAgICAgIHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShpMmMtPmNsayk7Cj4gICAg
ICAgICBpZiAocmV0KSB7Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIlVu
YWJsZSB0byBlbmFibGUgY2xvY2suXG4iKTsKPiAtLQo+IDIuMTcuMQo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
CgpJIHNlZSB0aGF0IHRoaXMgZGlkbid0IGdvIHRocm91Z2guCkFja2VkLWJ5OiBNaWNoYWwgU2lt
ZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPgoKV29sZnJhbTogQ2FuIHlvdSBwbGVhc2UgYXBw
bHk/CgpUaGFua3MsCk1pY2hhbAoKCi0tIApNaWNoYWwgU2ltZWssIEluZy4gKE0uRW5nKSwgT3Bl
blBHUCAtPiBLZXlJRDogRkUzRDFGOTEKdzogd3d3Lm1vbnN0ci5ldSBwOiArNDItMC03MjE4NDI4
NTQKTWFpbnRhaW5lciBvZiBMaW51eCBrZXJuZWwgLSBYaWxpbnggTWljcm9ibGF6ZQpNYWludGFp
bmVyIG9mIExpbnV4IGtlcm5lbCAtIFhpbGlueCBaeW5xIEFSTSBhbmQgWnlucU1QIEFSTTY0IFNv
Q3MKVS1Cb290IGN1c3RvZGlhbiAtIFhpbGlueCBNaWNyb2JsYXplL1p5bnEvWnlucU1QL1ZlcnNh
bCBTb0NzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
