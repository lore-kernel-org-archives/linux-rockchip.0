Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E6D5CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 13:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRcN8lOUP6rnCQvkBi1FgMA3DAqRrVem/VtHjZBmcfU=; b=1hmWaWwVEY3N/n
	xZLfm1RG5me+BDOcovnag3PSaeuXFOZplOlQTwdRiJpRWDgZsJIvDXnFOXumr2vXS/ZkVidWvR/l6
	QWrohTemBVQZtMM52AooTfxM0COXYaCvQ8KjMerU6+CkJfM0eGqHE+oqRYPMuleyFseX86FzEA96A
	pfs+CRbl/WI0okV/O72wyNVFhsGAtNu5TkEpFmkel4ut7X/KHxTPY3ZSkabKXHeNbFqmzoyuqGKDp
	zyw2qaIQXtKa2CEd54Kfsv7xQGnafC88an7CekU9GEr3cxydfguCdp0JmryxxU5T0ksclra/PjzbW
	MP3Mtz/VcHXLeZhEHN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHk0-0000000GohO-2r6Y;
	Sun, 08 Sep 2024 13:14:08 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHiy-0000000Goc9-2Mow;
	Sun, 08 Sep 2024 13:13:06 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2d877e9054eso2390678a91.3;
        Sun, 08 Sep 2024 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725801183; x=1726405983; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7QFv+GNCFsI4pY6KpEfbngQLTkjwWYYfX0SGlW8YyEU=;
        b=lI+PDVQ5eLE+jyIXPLar5/PvkrL2wAmoxZ+X83Nzs3wZcFzNBjyBnqdR6Tutkgw0aC
         g5x7c73v1f0FAwyVfrpLPCDl1ATVej1KpOBIdzGYX6CGKDszE9gqro/le7D8+ei70lIh
         Wjfrgdn+a7xIIQMhSAJlcV0DKvIPSwFIRU9Yn1eFtzk5EBcXvyRI2mPe1SUGjk/ee5bP
         bmuGyXiDHnJLjEPwCB0oiUqdXSkuUdGurzLJhipALI19U69hxzLzboWTF7yRKUczfeob
         +jeeJG99OPI0z35oMp42xD+ddRxz6/oj0PNjPXfTfVRF/fobkCjTo8UfIvKnVCf5wRFQ
         BfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725801183; x=1726405983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7QFv+GNCFsI4pY6KpEfbngQLTkjwWYYfX0SGlW8YyEU=;
        b=jLtTNGclZoWhpbLbxVW3ns+/BI8xj0e7WdzvtWIM+ju7aFUdRVKvVRuuVNspnGSP1A
         foFhqEAAH9l0KPONtl6WMei6lqEynipbFsP4KqWA8LQ6hsLkrXcRdQ/rtikNk2JFFHRg
         SB6M59B4HRFYaiKW/U62ReaBa863yM0CS9mb8zmRYYUVOM0p6XSw35P0Z4k2m/T2DkAu
         s1BTj8JcumzDPOWbCK45nyp4VqJen002xT7fn+23CYAmcEztpPt3TFO2GgN4b6zIu9f5
         x8qVhJGJfgs/P/WJuZUhGqeQiGxImZ2tGr5j13cuy7EP7ooVgJ8MMraLEIuNAap2SO0u
         b7Tg==
X-Forwarded-Encrypted: i=1; AJvYcCUbGLpuhNtuhNOYnpcTEhDMKoBYH30U3kr2R8Bd6wOgFir7TLZO67hyqg/jdA4RL3LF7eMkkeaOKJ8Yni0klNie@lists.infradead.org, AJvYcCX0uHyO22vZurjdmLEdVko1iBLSaGs+efZWzFvej+lNcYj3Wwk1XhB/vosd3RozKIvpZPXdhfaxSrPSielRnCY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7sLn0oAFhyCfoWggvLtojEEAR6Pf9j6HpjKF2B3yMfNm1aTH6
	FVkfXCfGwW0kVgqeLXaISjHvV8TPamiW5/YneXpxTNCqMPVJYJJx
X-Google-Smtp-Source: AGHT+IEfAWgV1CcdDM42hBbDeFjDbTFwOWDIC4d24tE1KlukJw+3/UVvLeds94DXNOk6wgRI4B09jA==
X-Received: by 2002:a17:90b:3846:b0:2da:89ac:75b9 with SMTP id 98e67ed59e1d1-2daffa7fcaamr6298933a91.11.1725801183059;
        Sun, 08 Sep 2024 06:13:03 -0700 (PDT)
Received: from localhost.localdomain (111-240-109-89.dynamic-ip.hinet.net. [111.240.109.89])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3b65sm2721946a91.25.2024.09.08.06.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 06:13:02 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: andyshrk@163.com
Cc: airlied@gmail.com,
	andy.yan@rock-chips.com,
	daniel@ffwll.ch,
	didi.debian@cknow.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	minhuadotchen@gmail.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: Re:Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Sun,  8 Sep 2024 21:12:37 +0800
Message-ID: <20240908131237.741-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <175266d5.2a89.191cbb2a62e.Coremail.andyshrk@163.com>
References: <175266d5.2a89.191cbb2a62e.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_061304_624185_806C9445 
X-CRM114-Status: GOOD (  11.42  )
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

Pj4gIERUQyAgICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC10cm9nZG9yLWxhem9y
LXIzLWtiLmR0Ygo+PiAgRFRDICAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1lZGdlYmxlLW5ldTZhLXdpZmkuZHRibwo+PiAgRFRDICAgICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc2M3MTgwLXRyb2dkb3ItbGF6b3ItcjMtbHRlLmR0Ygo+PiAgRFRDICAgICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5ldTZiLWlvLmR0Ygo+PiAgRFRD
ICAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdGIKPj4g
IERUQyAgICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC10cm9nZG9yLWxhem9yLXI5
LmR0Ygo+Pi4uL2luaXQvbWFpbi5jOjE5MjoxMjogc3BhcnNlOiB3YXJuaW5nOiBzeW1ib2wgJ2Vu
dnBfaW5pdCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPj4uLi9pbml0
L21haW4uYzoyOTA6MTY6IHNwYXJzZTogd2FybmluZzogY2FzdCB0byByZXN0cmljdGVkIF9fbGUz
Mgo+Pi4uL2luaXQvbWFpbi5jOjI5MToxNjogc3BhcnNlOiB3YXJuaW5nOiBjYXN0IHRvIHJlc3Ry
aWN0ZWQgX19sZTMyCj4+ICBDSEVDSyAgIC4uL2luaXQvZG9fbW91bnRzLmMKPgo+Pgo+Cj4KPkkg
Y2FuIHNlZSBzYW1lIHdhcm5pbmdz77yMIGEgbG90cyBvZuOAggo+QW5kIGFsc28gc2VlIHRoZSB3
YXJuaW5nIGluIHZvcDLvvJoKPmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3Ay
X3JlZy5jOjUwMjoyNDogc3BhcnNlOiB3YXJuaW5nOiBzeW1ib2wgJ3ZvcDJfcGxhdGZvcm1fZHJp
dmVyJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+Cj4KPk1pbiBIdWHv
vIxJZiB5b3UgYXJlIGFncmVl77yMSSB3aWxsIHNwbGl0IGl0IGZyb20gbXkgcGF0Y2jvvIwgYW5k
IGFkZCBhIEZpeCB0YWcg77yMYW5kIGFsc28gYWRkIGEgU29CIG9mIHlvde+8jCBUaGVuIHJlc2Vu
ZCBpbiBNeSBWMyBzZXJpZXPvvIx0aGlzCj53aWxsIG1ha2UgbXkgcGF0Y2ggc2VyaWVzIGVhc2ll
cuOAggoKSXQgbG9va3MgZ29vZCB0byBtZS4gVGhhbmsgeW91IGFuZCBEaWVkZXJpayBmb3IgY29t
bWVudGluZy4KCmNoZWVycywKTWluLUh1YQoKPiA+QW5kIHNldmVyYWwgZm9sbG93ZWQsIGluY2x1
ZGluZyBpbiBjLWNvZGUgZmlsZXMuIFNvIEkgc3RvcHBlZCB0aGUgYnVpbGQKPj5hbmQgYXNzdW1l
IHlvdSd2ZSBpZGVudGlmaWVkIGEgb3Igc2V2ZXJhbCBhY3R1YWwgaXNzdWVzLgo+Pgo+PkkndmUg
c2VlbiBzZXZlcmFsIGNvbW1pdHMgd2hlcmUgY2hhbmdlcyB3ZXJlIG1hZGUgYmVjYXVzZSBMTFZN
IGZsYWdnZWQKPj5wb3RlbnRpYWxseSBwcm9ibGVtYXRpYyBjb2RlLCB3aGVyZSBHQ0MgZGlkIG5v
dCwgc28gaXQncyBxdWl0ZSBwb3NzaWJsZQo+PnlvdSdyZSBvbiB0byBzb21ldGhpbmcgaGVyZS4K
Pj4KPj5CdXQgaXQgd291bGQgYmUgaGVscGZ1bCBpZiB0aGUgY29tbWl0IG1lc3NhZ2Ugc2FpZCB3
aGF0IGNvZGUgd2FzCj4+cG90ZW50aWFsbHkgcHJvYmxlbWF0aWMgYW5kIHdoeS4gQW5kIHRoZW4g
dGhlIHByb3BlciBmaXggZm9yIHRoYXQgY291bGQKPj5pbmRlZWQgYmUgdG8gaW5jbHVkZSBgcm9j
a2NoaXBfZHJtX2Rydi5oYC4KPj4KPj5DaGVlcnMsCj4+ICBEaWVkZXJpawoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
