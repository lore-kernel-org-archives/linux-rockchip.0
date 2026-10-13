Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186D4CC6B1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 18:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdMR2TpFvG6F1qAK3fGasnPeyuZVMtnMmHQqEoBIeWY=; b=ezGSQKHJVwS7Ql
	7LnW7JRdWhdkeQaCbvryzdWv216ud964sTFGiLhvHrr4FhrKJurQkp6OoEymwD/U1LNJCqbZOM8nf
	ySYlWeYwvidhKr8U2zTsBtfI6kYVWyXH7RDK6GOf++dlxeT9KC/6VeoV82XyRP7tHPULJUIQ4L+GZ
	jQ+HG4uqTSG5qKY/48ZcqyNLgUy4E20MFK/enAUZWQkxtTCA5xl4HryyZ5ee+ICqaFbQOfpBXc92o
	ebbp75EP4hJ/OgbW2dU+bM0SKYq050r4jVLpKUJrctVRjbS0s2tuyrUVacISv5/jFOXXNI9dLB5HW
	62aLhY1L4lpzqOoShTEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGgyQ-0000000Dnv1-2BGD;
	Tue, 13 Oct 2026 18:11:38 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGgyM-0000000Dnth-3wdJ
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 18:11:36 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-3a980c01033so1535271fa.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2026 11:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791915092; cv=none;
        d=google.com; s=arc-20260327;
        b=cv8Rwp/tRCHecdQHwcOGP1QDEeUdOy7WockZ3et7ylgjEEMuxHIn92y5BrzkEHcark
         cl78ApCuJJVSQo+7B+9zuUtCGf5/H4FLT0KnP3G1m77t8TWJCBIVIizkq3M66jLqXuNW
         dr9WZxh/eSq0/PgzjIjb1Qgx/r4Hw/WxDtoZqE+BeHIPdFeFeIY0AY9WSMRGS/Ei7vIr
         4jJiRdpFzE23RWtdskNQLIs2SkX0VgciC+IVzJocVu9/OeyspMDBojCezsdLPhxm2/G4
         2t1E7H5g6nksY0TVhhsHk9prqKul/SKekKbrRUdgR7JK+Pva+e1eNnFdvu8CYmUJt7i0
         YtVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Tc1zp/jsWqF51CNIfkZYVDsfG54HgePDR513djZlTcM=;
        fh=QXND4OTx+vtt82drN+aaE8gaYYH1Mk+lSlgdiP+kaX0=;
        b=K/OrWeC+E+lWEPrwdJmfJY1laQ+KLHq+pXQk8ovOK8c6fSp86NVB487AEhubKEly2D
         ipSTNYWiCESQPL+pH2QjwiIVV13bwUeus/7SNkurb86QJjB9ZiDdntgG1B85BGCt31IJ
         4zxKQVwYdGWjR1poaIg07e2ruKxzcQP5OxoahG8luMV+UnxrVW8OPGIqDs7PW4xpRapF
         CsK4xv/KH2RZU/Spka2b40pAsjhxAjn7pLvPCPb41M3sx3HjyuX+gc5oifw4UocQy3Ee
         HtkXSnrLnxby5xJCq55hVBIcc9EwIHOyqc5OAMcEVkWaoCBeNMNcNU12BNjWn6BqHU59
         wiuw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791915092; x=1792519892; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Tc1zp/jsWqF51CNIfkZYVDsfG54HgePDR513djZlTcM=;
        b=JWw0OSmV3+wws/VuxBGeJexzTdwj5d1ejlVry8MMIAdPU9zJGQQxt5F+7gAEV+ui8T
         /E54iXHsQN6AHSNttku2aDlB8sTQ+VjxHdUbuWzN2frOUI67GHuhOERoKw/5NaBKExE7
         G/DLHvX0/hKuA6k4McTKg9mnUGbCgfJ2XJo2A2CErylzjpDYibETFyV9rcaGIGxxxtBi
         BgbhM7KQunMdg8QMFev3zMbaGI97mmNo3CQZiQDf8iJC44BzZQSF1H+ZB6923ROnVn3A
         SYMgc+w28srRvIkpBTvu2pfXGdyVk9wYVfiHPNARqfXwRxCqrw+K07tJC4nFLnK/Axu5
         fIaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791915092; x=1792519892;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tc1zp/jsWqF51CNIfkZYVDsfG54HgePDR513djZlTcM=;
        b=Z/yJw3zySm7HDaMcnonl0Bm/uhmau+U6GNw0y+gvTSkfY38JUcfZJFcN46ynldLsHn
         RRUr6xga8JR1No6S2V4Q6KsDHIHMYX5knprfIDt+sI2/rMId4bGCoZ2YPeN3Moyfv9Bb
         nOG2JultP0esdgyWkym+UQpsGfhkjzXQjnioxNffxVFILQ3o7+6OMgJ9M2trBL/IkWkF
         I1uPopcMM6SdkTznRqctRa1imX/maN/jdDdFHAzqvKAuRaXqCe6jIeX6FSc8FnkPIy9x
         MiC/Z2ilCV+ez0i4yyyB0yOolcn/VRecMcbAwXsQ/SSGLc3lFu5qKkfW8rRASz6eSplJ
         z/TA==
X-Forwarded-Encrypted: i=1; AKwUvBzZedz97kf2PoVnsJNeZP4EEbGV9kaPccmYZC6iuN4DaliBnpKKVu4g+/Mp/sCn7xtFPw+txXka6kWbGQujwg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ2BTnu0pkTxFIwp2P0B2sSKIKgzHlBx6zkzlH/eifWBMvhP/zK
	1tuOEUrqxQTss1skuJ0YYdSoP74a0iE9g98/In6xQ3EE/HrsVLacrvqI4/Mzl5my1MaG18iRhuv
	DK6P2GbxTGxm6P5gDnmGVSZs5w5mnCco=
X-Gm-Gg: AYBFou1e+DF3PJ63qmw0OnMIdOylU7wNdc+H+F6mVh4VgHlQW58DtfINiBtOF2TAbhl
	kWMBWEjWgnN5QHv+3L2JOFtVXQznMvuKw7L9hCEbf/tiGkcZai8nWFuRW++2HGX8+x2ineDRXpc
	ZbPcid3OY5QSukpgG7yNq+gjGW2X53ZNUfP3IPoz0gk0Mgc8G/THHiLhNNPmeNzcDgXGZXR/lpU
	9tS8oWC0wsKc1eA1G/yCjxvsS3YeDpYVyjHrYvllEa6t4G7eHn9v9hV0eEadV04ZTzcvHBEyOxf
	Kqs2qI33zQYDur8NYrfqjokGHryptul5UFo0+itgSyvuuS2JlqWhKNki
X-Received: by 2002:a05:651c:1542:b0:3a6:692d:b7ed with SMTP id
 38308e7fff4ca-3a9c539343dmr36125771fa.20.1791915092239; Tue, 13 Oct 2026
 11:11:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1781622998.git.geraldogabriel@gmail.com> <179189927768.12828.5970294502454132706.b4-ty@b4>
In-Reply-To: <179189927768.12828.5970294502454132706.b4-ty@b4>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Tue, 13 Oct 2026 15:11:20 -0300
X-Gm-Features: AclHuK9xQdtHZz7WlG4Kf2RJqiboP4WJrJZBrkr8E7ZdVfvIdA54iitY7tUbJH4
Message-ID: <CAEsQvctXV4zga6Rn+6=Q1zmEmMjDV-83VTWP-b2gWy4Bfdz_1Q@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_111134_989431_BD71DC94 
X-CRM114-Status: GOOD (  11.77  )
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

SGkgTWFuaSwKCk9uIFR1ZSwgT2N0IDEzLCAyMDI2IGF0IDEwOjQ44oCvQU0gTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBUdWUsIDE2IEp1biAy
MDI2IDEyOjI0OjQ4IC0wMzAwLCBHZXJhbGRvIE5hc2NpbWVudG8gd3JvdGU6Cj4gPiBQQ0k6IHJv
Y2tjaGlwOiA1LjAgR1QvcyBzcGVlZCBkaXNjb3VyYWdlZCBieSBSb2NrY2hpcAo+ID4KPiA+IERy
YWdhbiBTaW1pYyBhbHJlYWR5IGhhZCB3YXJuZWQgbWUgb2YgcG90ZW50aWFsIGlzc3VlcyB3aXRo
IDUuMCBHVC9zCj4gPiBzcGVlZCBvcGVyYXRpb24gaW4gUm9ja2NoaXAgUENJZS4gSG93ZXZlciwg
aW4gcmVjZW50IGludGVyYWN0aW9ucwo+ID4gd2l0aCBTaGF3biBMaW4gZnJvbSBSb2NrY2hpcCBp
dCBjYW1lIHRvIG15IGF0dGVudGlvbiB0aGVyZSdzIGdyYXZlCj4gPiBkYW5nZXIgaW4gdGhlIHVu
a25vd24gZXJyYXRhIHJlZ2FyZGluZyA1LjAgR1QvcyBvcGVyYXRpb25hbCBzcGVlZAo+ID4gb2Yg
dGhlaXIgUENJZSBjb3JlLCBpbmNsdWRpbmcgZGF0YSBsb3NzLgo+ID4KPiA+IFsuLi5dCj4KPiBB
cHBsaWVkLCB0aGFua3MhCgpUaGFuayB5b3UgTWFuaSwgdGhhdCB3YXMgYW4gaW1wb3J0YW50IGRy
b3AuCgpJdCdzIGEgbGl0dGxlIHN0cmFuZ2UgSSBndWVzcyB0byBoYXZlIHBhdGNoZXMgdGhhdCB3
ZXJlIFJlcG9ydGVkLWJ5CmFuZCB0aGVuIFJldmlld2VkLWJ5IHRoZSBzYW1lIHBlb3BsZS4gQnV0
IGluIHRoaXMgY2FzZSBEcmFnYW4KYW5kIFNoYXduIGRlc2VydmUgYWxsIHRoZSBjcmVkaXQsIEkn
bSBqdXN0IHRoZSBwZXJzb24gd2hvIGRyb3BwZWQKc29tZSBjb2RlLgoKUmVnYXJkcywKR2VyYWxk
byBOYXNjaW1lbnRvCgo+Cj4gWzEvM10gUENJOiByb2NrY2hpcC1lcDogZG8gbm90IGF0dGVtcHQg
NS4wIEdUL3MgcmV0cmFpbmluZwo+ICAgICAgIGNvbW1pdDogMzlmODlkZGUwYTc2YjIyOWRmN2Vi
MzU2YWFmNmY0NDRiNGY4YTYzNgo+IFsyLzNdIFBDSTogcm9ja2NoaXAtaG9zdDogZG8gbm90IGF0
dGVtcHQgNS4wIEdUL3MgcmV0cmFpbmluZwo+ICAgICAgIGNvbW1pdDogNTk4OGE1M2Y1YmY3NThi
MmQ0MWNiNmUwODMyYzE5Yjk2OTJjNzZkMgo+IFszLzNdIFBDSTogcm9ja2NoaXA6IGRyaXZlIGF0
IDIuNSBHVC9zLCBlcnJvciBvdGhlciBzcGVlZHMKPiAgICAgICBjb21taXQ6IDYyODQzMDMxY2Ex
ZjExZDFiOGU5MGU3ZjU1OGMxYjNjNGNkNzcxODQKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IOCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KPgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
