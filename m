Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC3CDC77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Apr 2023 00:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1c+CneyFRXMmv20qSo+sJP1qJJfwjPZtL67TNvTnFw=; b=vRDfR/j0HlVPc4
	C+oGO3dwO9a5pmytLoEEvYUCWr7bJtFHuQfXrBYShKLxB/LH0MG4Th8Dj+bms6VPHS19v4Pco+EU4
	sWlCHo+j/AWujhiGQC41BBq7PUXLXvVEHUBfsnKx7zQfIHJv6p442NLCdAXY1lB34dqLFHyAMPSVI
	o40DOUixmnZHs4+p6hQvMGhAhSoB3CpNtnnU7bgbBlDW6jOACNd0CwEw4fmIFpCBiKMPcH3MX3R6e
	8+BgTLLGKS/1bEkWt1h2jN9OagBlX3pXPXvyf5ApaXgOgfOvBOZSebP1uDanpO+jJYzRUdVqPuH1Q
	TDdhZ1Ek5oPJe4PPQCLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppIW4-006lQe-2j;
	Thu, 20 Apr 2023 00:51:16 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppIW2-006lPh-0J
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Apr 2023 00:51:15 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-94f1a6e66c9so31691266b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Apr 2023 17:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681951871; x=1684543871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cieTxd+6gnGpbMO70/NAnptjUJVAI1vwH591gspwGCM=;
        b=rO1AaJJFfQWjhOKmx8mHm+ZAjxLG0ihnQDtLGH4bsZzJeih+RtZ/sv7mYmIO6JDEfF
         htEMS6t3EXaf3vmnQELMLKPplBrtoedRQC5BcUn5s3V/m7hui5o7D6xGx9WP6vTQSX0L
         aeZ2siEnpM0mvQhwQXcMX6gGrPWFhQr/qKQ7D26ZaWmCuguzh27C/uTL9KBeyHWreq9L
         wD48LBJaI776S4A7qRjliJI40655vogH6kqNq027CxNyRkgeXSROlkwQLP1Gt04LBh55
         KOiRYSmv8o37hN6rt8x+ert8hmK1xhoALNWMYxz4mKB9BJeZMLQ0sSVz7fl24LUZrcYI
         4MJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681951871; x=1684543871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cieTxd+6gnGpbMO70/NAnptjUJVAI1vwH591gspwGCM=;
        b=NT6Yy2Bh8bK4hxSP1s8oIrU4ywnphLjc+cDmeLVuJPkczPhR9UMy+9G/L9TpBGuaQ3
         M6jW9nOPmXqMTSCBY/6ivMWlLYZbZymUyfit2LKeVDUXWTsAP09lk1vjVj+PV+FvJVnP
         tzjZwAg3k5gAUNJj3sbVJ+Y11VX0yUnbvvhWe+/4nz4+8o9MmeMebrPnSIMjswVUirxB
         HwR2/vG+vQnikzHs0zhs/6hsFolJtNRDLd8CR0ey/ada0sxIM9usGD9Z4LiQGvtbRXlh
         zHLueAQexhumU5hVEV0dIcoeKTK6ct4A3Wf+gsvqFeXHMIP+hV/TDjOarKVs4ANJDOzj
         0HCA==
X-Gm-Message-State: AAQBX9dHCJ/vlENMdq9x35C0637aNHGNsv0WqRvdOZTv4qnV88UqGWNM
	UIIaKJa/lo1/xR/TGd3pOXfFH4viXT6nUo0ZwRwHwCASnis=
X-Google-Smtp-Source: AKy350aQkLEX01y4S6l83D+oRhe/v0omBb78J4jhczK33UTlLHzFiu0vV1bqtzTWnwQoBpcAzdzDK3VNT4OPnSBlcPE=
X-Received: by 2002:a05:6402:613:b0:4fb:953d:c3d0 with SMTP id
 n19-20020a056402061300b004fb953dc3d0mr8016328edv.20.1681951871225; Wed, 19
 Apr 2023 17:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <ZDeZTWWIW2I4H7Sc@www.com> <57c88a52-c051-4297-22e0-2188cc65a058@pengutronix.de>
 <trinity-e69c6c48-49c2-4100-a241-af7fc413decb-1681372962162@3c-app-gmx-bs48>
 <CAG0V13QvKMi7Fv=Db9cBA5Woi2N2PyasFtxMMzpg73t92YcAkA@mail.gmail.com>
 <trinity-f37c2db7-07e4-40c1-982c-bdd6cd4c1bd1-1681378639363@3c-app-gmx-bs48>
 <CAG0V13RuZbc6dUHNdUMdc=52cGMJwcsTqjHke8tpTuS9wTyMXg@mail.gmail.com>
 <fdabab73-3b7a-ee33-21b9-6f459c099881@wolfvision.net> <CAG0V13S4EdYmx-hkpsq-iexwXMOa6e4qcV5_E7XjwYdFYO+CnA@mail.gmail.com>
 <460114da-d864-0cdb-e482-560f57bf7781@wolfvision.net>
In-Reply-To: <460114da-d864-0cdb-e482-560f57bf7781@wolfvision.net>
From: Doug Brewer <brewer.doug@gmail.com>
Date: Thu, 20 Apr 2023 08:50:55 +0800
Message-ID: <CAG0V13SRxsREgutxWwDuJmgAh3iU5X79bX-eGusOVJpSaoSTCQ@mail.gmail.com>
Subject: Re: Problems about NIC, PCIe and usb on RK3568 EVB
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_175114_154466_458E9FCA 
X-CRM114-Status: GOOD (  12.92  )
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

T24gV2VkLCBBcHIgMTksIDIwMjMgYXQgNjoxOOKAr1BNIE1pY2hhZWwgUmllc2NoCjxtaWNoYWVs
LnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4gd3JvdGU6Cj4KPiBIaSBEb3VnLAo+Cj4gT24gNC8xOS8y
MyAwNzo0NywgRG91ZyBCcmV3ZXIgd3JvdGU6Cj4gPiBbLi4uXQo+ID4+Pj4+Pj4gT24gNC8xMy8y
MyAwNzo1NSwgRG91ZyBCcmV3ZXIgd3JvdGU6Cj4gPj4+Pj4+Pj4gSGksCj4gPj4+Pj4+Pj4KPiA+
Pj4+Pj4+PiBJIHRlc3RlZCBMaW51eCBrZXJuZWwgNi4zLXJjNiBvbiBteSByazM1NjggZXZhbHVh
dGlvbiBib2FyZCwgaXQgc2VlbXMgdGhlcmUKPiA+Pj4+Pj4+PiBhcmUgcHJvYmxlbXMgd2l0aCBF
dGhlcm5ldCwgUENJZSBhbmQgdXNiIGRldmljZXMuCj4KPiBQQ0llIGlzIGFkZHJlc3NlZCBpbiBh
IHNlcGFyYXRlIHRocmVhZC4gQXMgdG8gVVNCLCBldmVyeXRoaW5nIGluIHRoZSBsb2cKPiBzZWVt
cyB0byBiZSBub3JtYWwgLS0gYXQgbGVhc3QgdGhlIHJvb3QgaHVicyBzaG91bGQgc2hvdyB1cCBp
biBsc3VzYi4KPiBQbGVhc2UgYWRkIHRoZSBvdXRwdXQgb2YgbHN1c2IgZm9yIHRoZSBzYWtlIG9m
IGNvbXBsZXRlbmVzcy4KClNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLiAgWW91J3JlIHJpZ2h0LCBV
U0IgZG9lcyB3b3JrIQoKPiA+Pj4+Pj4+PiBGaXJzdCwgTklDcyBkb2Vzbid0IHdvcmsuCj4gPiBb
Li4uXQo+ID4+Pj4+Pj4+IG1kaW9fYnVzIHN0bW1hYy0xOiBNRElPIGRldmljZSBhdCBhZGRyZXNz
IDAgaXMgbWlzc2luZy4KPiBDYW4geW91IHRyeSBzZXR0aW5nIENPTkZJR19SRUFMVEVLX1BIWT1t
IHRvIENPTkZJR19SRUFMVEVLX1BIWT15IGluIHlvdXIKPiBjb25maWc/CgpTZXR0aW5nIENPTkZJ
R19SRUFMVEVLX1BIWT1tIHRvIENPTkZJR19SRUFMVEVLX1BIWT15LCBldGgwIHN0aWxsIGRvZXNu
J3Qgd29yay4KCnJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQgZXRoMDogUmVnaXN0ZXIg
TUVNX1RZUEVfUEFHRV9QT09MIFJ4US0wCnJrX2dtYWMtZHdtYWMgZmUwMTAwMDAuZXRoZXJuZXQg
ZXRoMDogX19zdG1tYWNfb3BlbjogQ2Fubm90IGF0dGFjaCB0byBQSFkgKGVycm9yCjogLTE5KQoK
VGhhbmtzLApEb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
