Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 876CEC07E95
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:12:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 19122610FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:12:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 19122610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1ILoBOWSA5Yub7MJu84JnD4yeIKqsoMSLtNvJxrYIo=; b=CgyAOEB9udw6wU
	ib+CxyI2SVRr4i6FDdqIWK4otAS6DdKplDL+MZXuPb20Cw7taMJQUMRKOQ9NzqvKUgXewk0KgBYNt
	ZLFcjOyXKnGp1/MPm5Gcq4pkOexJZo5KdF4yIPwSdA3X+jLs6RaQzelCmpCTGR9N0sVHwT/SXVhC1
	fdz7m7vX5COpUnOe8vkOCIOvVxiijpykE5neydwnMy9kz+RJLhmRaWvPw6g15+RtYZU6eE06SAjsU
	Dr5xON4Std9dq1Jzboqbs+a8vdUODu4JmzB5VMmVs1z1ttB8dvgs+EXCWN2mCGxZwbYVj2am1+yKU
	X/nOx2Pd+nO+SS0PDR8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5Zcz-00BE5G-Ef; Mon, 19 Jul 2021 20:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5Zcn-00BE3O-0b; Mon, 19 Jul 2021 20:12:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C3B26113B;
 Mon, 19 Jul 2021 20:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626725544;
 bh=JCj9N4s/hdtVIGnVeiVqSJIQIXC5g0PIHW7LS3LSnQQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bYsT06FdvrtF6+L2WZ/G8akQFJ48X/JNEH3PoG/rEXDpPvNSVUsXMP9D7Qrx2iueP
 eJ0spKqMyZ4z9dGwva0crTrObiU031Qzwb59RtUqiUOP7NqiozRJ/VbjkZpha9gNpf
 IyV7IEItJ2HqJqDUzTFyXYzt4sogWEHdW5uUZ+8D/aJ2btnhwsg9SjoYoOZogL530d
 SWIsNOyX5TOfXIMwNcKQlgZkU5aSd3+F2ODF8Toas6H557Q9dzbtCfWTmJk3ji02v+
 ndYA2erHeBeXu8lTCUC/aecp/ED9YN7i3Csx6i9/5uo7q/bgA2dmsaCJQ+513XD9re
 /idw7mcXXM6KQ==
Received: by mail-ed1-f53.google.com with SMTP id ec55so25692669edb.1;
 Mon, 19 Jul 2021 13:12:24 -0700 (PDT)
X-Gm-Message-State: AOAM530VYRt9VTBdnYyR62HKo9XPumGsmnp+3HulPbXSDHss22heYoKy
 dleVqmFLPZDgqN/ADWPPs7JszKna+/AICuNwfQ==
X-Google-Smtp-Source: ABdhPJwCxUJGpCNipUis1RgH8ABZHN7f3vU7SUFmhfDjndCv9fUJN8pvhKea2xsLX28gDThbSCs5vLmtxN/9QbIt8Lw=
X-Received: by 2002:aa7:c641:: with SMTP id z1mr27592530edr.289.1626725542940; 
 Mon, 19 Jul 2021 13:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210610175613.167601-1-nfraprado@collabora.com>
 <20210624190041.GA1812802@robh.at.kernel.org>
 <20210719195115.cgh7fh54kwloo4o7@notapiano>
In-Reply-To: <20210719195115.cgh7fh54kwloo4o7@notapiano>
From: Rob Herring <robh@kernel.org>
Date: Mon, 19 Jul 2021 14:12:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKoEwbfKz3s3OJJkk8izu2ak=dEhD2qjaw6Ad71Tb3_EA@mail.gmail.com>
Message-ID: <CAL_JsqKoEwbfKz3s3OJJkk8izu2ak=dEhD2qjaw6Ad71Tb3_EA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clk: Convert rockchip,
 rk3399-cru to DT schema
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 Collabora Kernel ML <kernel@collabora.com>,
 Xing Zheng <zhengxing@rock-chips.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_131225_138339_01689E38 
X-CRM114-Status: GOOD (  11.97  )
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

T24gTW9uLCBKdWwgMTksIDIwMjEgYXQgMTo1MSBQTSBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbwo8
bmZyYXByYWRvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBKdW4gMjQsIDIwMjEg
YXQgMDE6MDA6NDFQTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBUaHUsIDEwIEp1
biAyMDIxIDE0OjU2OjEzIC0wMzAwLCBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyB3cm90ZToKPiA+
ID4gQ29udmVydCB0aGUgcm9ja2NoaXAscmszMzk5LWNydSBiaW5kaW5nIHRvIERUIHNjaGVtYSBm
b3JtYXQuCj4gPiA+IFRlc3RlZCB3aXRoCj4gPiA+IEFSQ0g9YXJtNjQgbWFrZSBkdF9iaW5kaW5n
X2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscmszMzk5LWNydS55YW1sCj4gPiA+IEFSQ0g9YXJtNjQgbWFrZSBkdGJz
X2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscmszMzk5LWNydS55YW1sCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6
IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNvbT4KPiA+ID4g
LS0tCj4gPiA+Cj4gPiA+IE9uZSBjYXZlYXQgaXMgdGhhdCB0aGlzIG5vZGUgZXhwZWN0cyBjZXJ0
YWluIGV4dGVybmFsIGNsb2NrcywgbWFpbmx5ICd4aW4yNG0nLgo+ID4gPgo+ID4KPiA+IFJldmll
d2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+Cj4gVGhhbmtzISBJcyB0aGlz
IGJsb2NrZWQgb24gc29tZXRoaW5nIGVsc2U/CgpJJ20gZXhwZWN0aW5nIFN0ZXBoZW4gdG8gcGlj
ayB0aGlzIHVwLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
