Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00E0AEB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 09:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaKnCPgbftNVRM0TzT2TyZmhvWnAtoGCRDmxjSRyNTc=; b=K9pKhbcB/+1HpL
	IGJJTRW0sCXRUSenniy/y4OQ3GuE/MjcDk1Po2NsAgf+BaOc/OON7VCiXQQrqSeMkmGrFhUWs7a3U
	ii5oeSyR5ztVawekq4XDDUwqUs495g8Akx4dXILzO4iPo/aqSQQc84ZpL619878eZ6yd6dXfVTx1G
	XrKHslwTne+kU9lEOTI+Cvs3iBeR0VzSCMtnRrWakrYeRkjNX317xQOtl9f5GhJxhHNd60bK75K09
	A3k6kiV2bBeCfcAhOktgjjK2gLqkxvs6Rxs852SzL51n1No3rmER8B2AgJSJB1v7YvLSHjRotW/AT
	FefkYHYwvRY+VukxCRrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCGZC-00HaUu-2U;
	Thu, 22 Jun 2023 09:25:26 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCGZA-00HaUI-2b
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 09:25:25 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b4745834f3so67493881fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Jun 2023 02:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687425922; x=1690017922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXNFkbv5vUpPI6XSeeWkZpsrtgMP8w02a+TILdEg/Bs=;
        b=Xcsb0aWMH3sFk6iE1EtPLcY6t6cVnaGEy4fyD+MHTjtybos9ugJZAaKu7YeNVqv7bj
         qGEMx+YBHnmUuLdeWLy8NFqyUapgl3oCYA3t1XCgvUGum1HGToTDje0EemLQRkbkX9vs
         KhDWYOqasbEp53oHH97vyllP0IkNjjQy+I7IAzJTcPF7CjVwglg1/5OsyKvRWZgqIRPl
         Fhx+kgipm7G4FHRKEc4U3F3iF43tan1/x0PMgw/ke9jifHcakRIhdbh9YoSEEfNKWyTz
         Nv2cx0dd7IZ5Blr9c0gC4GtltF2npN20eWeibPHeMPhVYk1AluhP4zvLnop1YeURK8aV
         kyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687425922; x=1690017922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXNFkbv5vUpPI6XSeeWkZpsrtgMP8w02a+TILdEg/Bs=;
        b=Dnh2d+wFcIbEGWWXwH0+QO6CyddJFO61xAqb9JWQ870FcR3LTf3xk9EheXOLUl9MC/
         +8IRfLIiYBq3htUd63MpEv563lFiashahnoI/cGVHMYVxIIDyLgd7BH7FPoFtHkb7lhc
         a8aZtfGvNVjMFvk0h4U8JGpmLgsa1qGHDkVz6lS76OG/cnTYmczv3VJ+KzYvYeEjEWK7
         IvgUDtZU3MsQ50xRZfG0+wBF2PCFDfnUxa5gIPGoJIK4N+Ff2YUjjqLHsYL2JzigbeV2
         DKEmpnDhWzRzBBKgmPdIRJlhVaI46KOwmrONpJQZtyK+5PXlXCOPKf+hH14DnvCqpZER
         nzbw==
X-Gm-Message-State: AC+VfDyaLN23IZlXbmLZyOtVrF4N/aLyZ/plfYn7UbvSuJss19stRlMW
	EnVUBxYKPKLQ6kjo9KZkaKVpMSQFV8cVg/CE6d9St9g4
X-Google-Smtp-Source: ACHHUZ4Y1r5VpK7sIrP971oDIAdIgSZhhGl2Bl4nCbQHryGno960o4UbGuoRuqdAPVb0XV/ePlmkzjkGkXdtDn7mFvg=
X-Received: by 2002:a05:651c:1045:b0:2b5:8206:e12a with SMTP id
 x5-20020a05651c104500b002b58206e12amr4456914ljm.42.1687425921890; Thu, 22 Jun
 2023 02:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZD64BH-XunimhVjcFF=H0O6zOg34KBMVcUa5hTZLJw0AQ@mail.gmail.com>
 <ee2c980b-c4e7-7058-d527-e9e280002056@denx.de>
In-Reply-To: <ee2c980b-c4e7-7058-d527-e9e280002056@denx.de>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 22 Jun 2023 10:25:10 +0100
Message-ID: <CALeDE9NVnarmgQ2gOrKQgL8Pid_SFttajpJiPVUDanfqyOaKuA@mail.gmail.com>
Subject: Re: Rockchip DWC2 issue
To: Marek Vasut <marex@denx.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kever Yang <kever.yang@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>, U-Boot-Denx <u-boot@lists.denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_022524_861948_46B5A855 
X-CRM114-Status: GOOD (  15.99  )
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

T24gV2VkLCBKdW4gMjEsIDIwMjMgYXQgOTozOOKAr1BNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IE9uIDYvMjAvMjMgMTY6MzcsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPiBI
aSwKPiA+Cj4gPiBIYXMgYW55b25lIHRyaWVkIHRvIHVzZSBkd2MyIGFuZCBlY2hpIHBvcnQgdG9n
ZXRoZXIgd2l0aCBVU0IgZGlzaz8KPiA+IGxvb2sgbGlrZSB0aGlzIGlzIG5vdCB3b3JraW5nIHdp
dGggdGhpcyBjb21iaW5hdGlvbiBvbiBhbnkgUm9ja2NoaXAKPiA+IFNvQydzCj4gPgo+ID4gSGVy
ZSBhcmUgdGhlIGlzc3VlcyB0aGF0IEkndmUgcmVwcm9kdWNlZCBpbiBSSzMzMjggd2hlcmUgdGhl
IGRpc2sKPiA+IGNvbm5lY3RlZCBpbiBFSENJIHBvcnQgaXMgZGV0ZWN0aW5nIGJ1dCBEV0MyIGlz
IG5vdC4gQW55IGNsdWU/Cj4KPiBJIGdlbmVyYWxseSBhdm9pZCB1c2luZyBEV0MyIGFzIGhvc3Qu
IFJQaSAxLzIvMyBkb2VzIHVzZSBpdCBhcyBob3N0LCBidXQKPiBJIHRoaW5rIHRoZXJlIGlzIGEg
aHViIGJldHdlZW4uCgpUaGUgQiBtb2RlbHMgb2YgdGhlIDEtMyBoYXZlIGEgaHViLgoKPiBBbHNv
LCBSUGkgemVybyAoPykgbWlnaHQgaGF2ZSByYXcgaG9zdCBwb3J0IG9uIGl0LCB3aXRob3V0IGh1
YiAuCgpDb3JyZWN0LCB0aGUgWmVyb3MsIE1vZGVsIEFzLCBDb21wdXRlIE1vZHVsZXMgKGluYyB0
aGUgQ000KSBpbiBzb21lCmNvbmZpZ3VyYXRpb25zIGFuZCB0aGUgUlBpNCB2aWEgdGhlIFVTQi1D
IChhbGJlaXQgSSBzdXNwZWN0IHJhcmVseQp1c2VkIGFzIHN1Y2gpIGFsbCBoYXZlIGR3YzIgZGly
ZWN0bHkgY29ubmVjdGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
