Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C17606A32A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZclnXtzE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=y5OqPKI3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n/yYUdNdNfNpnHZGE3AD5H4eWtoSpMWoEsdiAXib3cM=; b=ZclnXtzE1PbG7874Tib8wq1T5F
	leu5BpvpYwLIgsZc+zhdLVyYCHLF2pu2EIgB5n5WP8ktNMqNd5kHhrvZ9H8GQbq/5akZd0okR78jr
	vh4qa2i+KVsT4fkwriCgKfyl31XiRVdoNoWVrcJuu21tLUIZPhcpq0E4MnWdEJwUeIS/lNEic9Zdx
	DuYAksUl0o5wO5hSO0n6hxrfnlUThq4uBrl/BSL+CqaKnkyU+nH4zsxQXhdYnO+smD5MDhNO3j1GK
	WQqUxUIA4OLJSYS+IAEm4g2jam5oxjLo1rXYUJZvRUeYUAiz8ahooh+psDKvGq/3hOro0cn7YJ3so
	rRGHUNcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMwX-00000006YgM-4AXl;
	Tue, 17 Nov 2026 17:26:05 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMwU-00000006YfJ-2BQe
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 17:26:04 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c504fffd8b3so245687166b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 09:26:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794936360; cv=none;
        d=google.com; s=arc-20260327;
        b=S9fwUp7TDCzraSkpNcftzL6B1XyAWo4M3Oh4tEOckFHyVkcMF3IDq8uDIpgMBgL424
         mV3RsyRjG4D4X2xurtmfov0dhDr0clhf6fMGIsdIi4XArmhTUfoSMG7VfYctyjsMcPdf
         UVcxu52MM+3+qC/GdNsoIOsFchkFJnFuVKbp+eMF53Hfb1dFVOdBLTUBe+KtO9cMhAiT
         K6mIq5Z67G/qQ7YZG+Jc6Ql5mEzcajXLwxVZPACXUZrZSoj0ofLw/qR9+Mhj5jbmax33
         1gCiThOyjB1wMUWqj/MqOCcI1ACCuIXymQ56ZBgnDFXdZfx6vXZyg5wdTzA6D29eUO9j
         9NXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=373Q6XKV7D4BGtZOuwgJiXk7Z3A+A6WU4sQOoM0c/Xg=;
        fh=Wn7+9R+nAXzSn7AX/UDx9lKIJaCMhPdXfj46qLFsCk8=;
        b=R67aUnZk9FtWvOQvduhA11jvcw1UJlxsEE/0sw+a1YmT1rMJdUE3JbcjvneLE/40Jz
         jY3Q+N10v+2+WqLLmlpmgkOMTlSodh2UNe27ZUE7H/YG7Lx/JrgnyJ/CJsp+FBMRdgAc
         w5hi8+GzKh90wCjNkm8mRL8z3rh+5ENcJ0cCORrcfi4q/Wefr1o8xcqE0MiFMQyoW3LD
         m9coeLYEz9OLcGAwgin2X49d4mw90KVHRTTtZY3Z5mdOKenRQReV3b6+k2l1p8SDEjT+
         bVw0yY2DqVh8sQSAMmiex5iYGZIzDwfNy0+dHlWkC1OvBFYSC2dYRhTcu16vlN0AMIZe
         vg2g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794936360; x=1795541160; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=373Q6XKV7D4BGtZOuwgJiXk7Z3A+A6WU4sQOoM0c/Xg=;
        b=y5OqPKI3h/Z+o5wJIOZuQ9750nFEd72EF/jMoBqK2AUIYGqV8kr93ISbixeI3e4vmO
         2r28wQisWFGgdpVX5K1x8r3m611sb1YhqLu4plQvraqFlIFZsRyNT/4281wqGKpGTAcu
         ymY9Uw4ir85wi8g3mHuSz1k3+boQ14IF1AlW9fFLLuZvhSPHGRLy2MZxGEfUmEf6Yl53
         /A1UkZCT7oGOHkkkX2dTxyFNxAFrZxv0a2Kp5hD0323AodJm0bFqR+/viH644MIGqfoV
         1n/TOBM773wgRMknrDVno4vLh9bUSkf04L/RP53PwfaZFxs/kqmikGQZwKkWeYN9yPAt
         UeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794936360; x=1795541160;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=373Q6XKV7D4BGtZOuwgJiXk7Z3A+A6WU4sQOoM0c/Xg=;
        b=bkhRmlkWoxGRT8Hx6wuM/zx/cAlIIsvS3tj5sjr/n+c9VZUIulkWbyZXuwx/mR5iiH
         R0uQSL2v5Te6o8bJ0zEdYLRrnAoql0faoOoqUHt3Ww5ebCfZf/VruF5hazprdncSN7T2
         hgNmyPDxUUADd1G59p3OXXu7j7AHQmr+b4UQMqSUpvDE7eaDjVuXxwpLUnaS+6YOKyUp
         LkBsv9IrPjxS/aPKU3kKLYwQ8lW62v1FYBE+xbK0hs7zN3GMZlPJ1KHBleG2nKMwPtOg
         Ernp7hMJtNKLvMDCWOFpa+OQCJs+a5SFAZef2QYlaca4XwvAma2GlwDRKUgdAM4DktcD
         OGQA==
X-Forwarded-Encrypted: i=1; AL+hErGLqLcfrOf3+LidgJbVJrblt6i2evAzjXNaF24BlyyqWz5piJSXZBpQHkb3uo/dpdnyYIHHZcLGkvXjsMpr0g==@lists.infradead.org
X-Gm-Message-State: APuU4Z/smUtv8WL0V+sJ4NxM0LUXGDUb+tPILVLXoQSo9xS1gcoyTuqM
	1Zyt+Cm50DI7TCuojy1fODC8zskX6XhY80JmI+3+/w3U7FPj9vWPXcddQinNLHVTbChgrm2+sOM
	dgPM5bCqxLTwhyFRmfQH/kO2XLslKg6s=
X-Gm-Gg: AYBFou1Jo6tGOciojG3NBJCbYRBHGRCVxon83D8ruEDP1MVdk07WEUyohyUQ6osiNS4
	lWJs0I31cEdL8MGCN+SoYW3yFmoo0aPQ8PHxMRyv0jhE4lnZ78UKSenPlUYfbakD2XVYrdDY6Tq
	rBQHyXGsTq64G8ETLCuNQJR8hrbD6KCPzZ20ERDpgRladLT/DRtaWwUjhFaJPsl8w69WQEecwmP
	BB4bXlrbydlhrxR/QpU4Md5Rmrh4E+cr181V4LFjMuiUpczMzf21U3USSjl1e/K3kWiICV+JEVy
	glpocBqu4IX4zDW/68FIb5HgXkk2XzmQa2NfNNemblpy7Iiv6FhXYFhIS0t3EpZShh3sr+GIKPu
	Ag4hYjCBXdX5y7TTRkLqIkvtzoLBWOHub4ITeCkFIaWUszohROdx2jz7iXYRaIDGt+VNSiHPlWL
	TWvcfn2W9d2Do=
X-Received: by 2002:a17:907:3e9e:b0:c40:4848:f7fa with SMTP id
 a640c23a62f3a-c50965421ebmr1292812966b.44.1794936360337; Tue, 17 Nov 2026
 09:26:00 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110160554.918652-1-coiaprant@gmail.com> <20261110160554.918652-2-coiaprant@gmail.com>
 <20261116183012.11a7ba72@kernel.org> <CALj3r0gTuJEDd==WzAQ+cK3Og-2zMqvmBrhrd2ARbKJctG5ZAQ@mail.gmail.com>
 <e3c5f034-1b05-4fcf-bbe1-8b473a8d2a0f@lunn.ch>
In-Reply-To: <e3c5f034-1b05-4fcf-bbe1-8b473a8d2a0f@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 18 Nov 2026 01:25:47 +0800
X-Gm-Features: AclHuK_-ty3BkaDRY6TNyMVy_fEf9UBHYFECA18oX_curJlczmmtv3pUHIwGjA8
Message-ID: <CALj3r0iwtmfZAN9iS8yN9fic0Q9jVnbYP_Hz1VDheVvmh2GcrA@mail.gmail.com>
Subject: Re: [PATCH net-next v4 1/2] net: phy: move DECLARE_PHY_INTERFACE_MASK_ZERO
 to core
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	Paolo Abeni <pabeni@redhat.com>, Jiawen Wu <jiawenwu@trustnetic.com>, 
	Mengyuan Lou <mengyuanlou@net-swift.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, 
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Fabio Baltieri <fabio.baltieri@gmail.com>, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_092602_619788_2C7D48D9 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0MTHmnIgxN+aXpeWRqOS6jCAy
MjowNOWGmemBk++8mgo+Cj4gPiBJIHVuZGVyc3RhbmQgeW91ciBjb25jZXJuIHRoYXQgaGlkaW5n
IHRoZSBpbml0IGluc2lkZSB0aGUgbWFjcm8gc2VlbXMKPiA+IHN1YmplY3RpdmUuIFNpbmNlIHlv
dSBtZW50aW9uZWQgYW4gQW5kcmV3IGFjayBpcyBuZWVkZWQsIGFuZCBoZSBpcyB0aGUKPiA+IG5l
dCBQSFkgbWFpbnRhaW5lciAod2hvIGFsc28gbG9va3MgYWZ0ZXIgdGhlIFdYIGRyaXZlciksCj4K
PiBJIGRvbid0IGxvb2sgYWZ0ZXIgdGhlIFdYIGRyaXZlci4gSSBjb21tZW50IG9uIGl0LCBhcyBp
IGNvbW1lbnQgb24KPiBsb3RzIG9mIGRyaXZlcnMuCj4KPiA+IElmIEFuZHJldyBhbHNvIGZlZWxz
IHRoaXMgZG9lc24ndCBiZWxvbmcgaW4gdGhlIGNvcmUsIEkgd2lsbCBkcm9wIHRoZQo+ID4gbWFj
cm8gZW50aXJlbHkgYW5kIHN3aXRjaCB0byBleHBsaWNpdCBtYW51YWwgaW5pdGlhbGl6YXRpb24g
dXNpbmcKPiA+IHBoeV9pbnRlcmZhY2VfemVybygpIGluIGJvdGggZHJpdmVycy4KPgo+IFVzaW5n
IHBoeV9pbnRlcmZhY2VfemVybygpIGlzIHdoYXQgY3VycmVudCBjb2RlIGRvZXMuIEkgd291bGQg
YWxzbyBzYXkKPiB1c2luZyBleHBsaWNhdGUgPSB7MCwgfSBpcyBPLkssIGJ1dCBpIHdvdWxkIG5v
dCBoaWRlIGl0IGluIHRoZSBtYWNyby4KPgo+ICAgICAgIEFuZHJldwoKSGkgQW5kcmV3LAoKU29y
cnkgZm9yIHRoZSBtaXN1bmRlcnN0YW5kaW5nLCBJIHdvbid0IG1ha2UgYXNzdW1wdGlvbnMgYWJv
dXQgdGhlCm1haW50YWluZXJzaGlwIG5leHQgdGltZS4KClRoYW5rcyBmb3IgdGhlIGNsZWFyIGd1
aWRhbmNlIG9uIHRoZSBtYWNyby4gSSdsbCBkcm9wCkRFQ0xBUkVfUEhZX0lOVEVSRkFDRV9NQVNL
X1pFUk8oKSBlbnRpcmVseS4KCkluIHY1LCBJIHdpbGwgdXNlIHRoZSBleHBsaWNpdCBpbml0aWFs
aXphdGlvbiBkaXJlY3RseSBhdCB0aGUKZGVjbGFyYXRpb24gc2l0ZSBpbiBib3RoIHR4Z2JlIGFu
ZCB0aGUgWFBDUyBkcml2ZXI6CgogICAgREVDTEFSRV9QSFlfSU5URVJGQUNFX01BU0soc3VwcG9y
dGVkX2ludGVyZmFjZXMpID0geyAwIH07CgpUaGlzIHJlbW92ZXMgdGhlIGJ1Z2d5IG1hY3JvIGZy
b20gdGhlIFdYIGRyaXZlciB3aGlsZSBrZWVwaW5nIHRoZQppbml0aWFsaXphdGlvbiBjb21wbGV0
ZWx5IGV4cGxpY2l0IGFuZCB2aXNpYmxlLgoKSSdsbCBzZW5kIG91dCB2NSB3aXRoIHRoaXMgZml4
IGFuZCB0aGUgbG9yZSBsaW5rcyBpbiB0aGUgY292ZXIgbGV0dGVyLgoKQ29pYQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
