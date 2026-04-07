Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE7F5FB517E
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Apr 2026 07:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqv0Iqr/tiE893sbTSNqt0GC6ZUXzs/HCqDdTfp9z4c=; b=A0PU42F9kPVEDH
	BpM/rNkTFKNHUEITgzRZ1E3bVsK0SijcxrblMLDiI5PIMdUpFZSXxtKyTR2VoP2K1OFfo7gutqLH2
	dmVqXCTXcS25eI5Sbg1pJZS3rE0Eaiq2A0pELBCsQkzcHVODAd9kPb4Q4LTEqooIf2jRJv4196e2h
	XkxEwJ3BQxCOJdjbjYJEykWCdJ6hRi2DnwcocKzKJYoCsmB+z9QzCGuVCC8ohgQGiL9hP+8v1LuEz
	musGMfXuvfnXP9/Bdl4I+e53y9kqbGdwuFTy81+VYpjlYM5nVuyVjSJVsej7LwUeDF9Ax6SyY3yDr
	XegM22txFE6UqxytxOBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA0ZI-00000006327-2A8E;
	Tue, 07 Apr 2026 07:09:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA0ZG-0000000631k-28h4
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Apr 2026 07:09:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E20D644438
	for <linux-rockchip@lists.infradead.org>; Tue,  7 Apr 2026 07:09:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C77B7C116C6
	for <linux-rockchip@lists.infradead.org>; Tue,  7 Apr 2026 07:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775545785;
	bh=KC/jj6GmhMHDUzRtlH3EgwHDlxInZpWR93VMFPpSvO0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Lg3+MFynZZDfGOAdcXK5csUuSME6DXXC2MFxNvAOHdoXnkpb4sCdWpygnucSj9v1m
	 95UFzrmtIoL/cY3EQ5MbSFZAR5Fb2zHLH5E2xcV1SfEIllG4HLZJ+jDvEJZG4VS73M
	 /tloYF7hTklShsjtd2WMxecRcFfyyLlFISH0sP9Bv3MV2PvGMIfemhb7LZF26B8ZYV
	 BVeRbXceej5LrHISpis04/2N/bLNcGtjE6vGSA/xYpa8Mw2mVzvRV3g7OOP3vHiSqr
	 m8SJo43kSOF5F6ZwQOUf0vlBiX80pFNSsfK3eE2SCsqD2Z4vHIQLDRp1fOlBAOaFsV
	 zHgQzrtSI1N/g==
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-79a46ebe2beso44768667b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2026 00:09:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXl8DkHs6SQbJWf+kMUMgVzBPZIpJn48MZ5ExwAs6+7/hf0hNqhEIlnUjXyo4EF+UCYSSfYU7t1P/+/dE59Yg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyusE9fVC4Ai7Cs9sOcGPp2lk9CYtVlivJDSnB9c2y9cLucSP5r
	kTA4M8aQYrFnGiWWqI6fiNgkL/LZQYXkYh3hT5537DrIdzGhJvoTPCpn4CjK1S62XFLFMQ70H5S
	noGrxy56RYpdG0QR7SLry2pMzTi3rw+s=
X-Received: by 2002:a05:690c:38a:b0:79a:7cff:7b81 with SMTP id
 00721157ae682-7a4d556cdf1mr162249447b3.27.1775545785139; Tue, 07 Apr 2026
 00:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 7 Apr 2026 09:09:34 +0200
X-Gmail-Original-Message-ID: <CAD++jLnKRFwdZOVdjX4wPmU_YvHw-MNjbbe09-GPaxHYDNav8Q@mail.gmail.com>
X-Gm-Features: AQROBzCRHOHR9JFWyk6j7oerUzw_hLzyX-ZP_Z0zJ8yhgH3qIO3DjaI4Yz45Jn0
Message-ID: <CAD++jLnKRFwdZOVdjX4wPmU_YvHw-MNjbbe09-GPaxHYDNav8Q@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, ye.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_000946_696959_EC0B9A9D 
X-CRM114-Status: GOOD (  10.43  )
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

T24gTW9uLCBNYXIgMzAsIDIwMjYgYXQgMTE6NTPigK9BTSBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cgo+IFRoaXMgZHJpdmVyIGlzIHVzZWQgb24gZGV2aWNlIHRy
ZWUgYmFzZWQgcGxhdGZvcm0uIFVzZSBkeW5hbWljCj4gR1BJTyBudW1iZXJzcGFjZSBiYXNlIHRv
IHN1cHByZXNzIHRoZSB3YXJuaW5nOgo+Cj4gZ3BpbyBncGlvY2hpcDA6IFN0YXRpYyBhbGxvY2F0
aW9uIG9mIEdQSU8gYmFzZSBpcyBkZXByZWNhdGVkLCB1c2UgZHluYW1pYyBhbGxvY2F0aW9uLgo+
IGdwaW8gZ3Bpb2NoaXAxOiBTdGF0aWMgYWxsb2NhdGlvbiBvZiBHUElPIGJhc2UgaXMgZGVwcmVj
YXRlZCwgdXNlIGR5bmFtaWMgYWxsb2NhdGlvbi4KPiBncGlvIGdwaW9jaGlwMjogU3RhdGljIGFs
bG9jYXRpb24gb2YgR1BJTyBiYXNlIGlzIGRlcHJlY2F0ZWQsIHVzZSBkeW5hbWljIGFsbG9jYXRp
b24uCj4gZ3BpbyBncGlvY2hpcDM6IFN0YXRpYyBhbGxvY2F0aW9uIG9mIEdQSU8gYmFzZSBpcyBk
ZXByZWNhdGVkLCB1c2UgZHluYW1pYyBhbGxvY2F0aW9uLgo+IGdwaW8gZ3Bpb2NoaXA0OiBTdGF0
aWMgYWxsb2NhdGlvbiBvZiBHUElPIGJhc2UgaXMgZGVwcmVjYXRlZCwgdXNlIGR5bmFtaWMgYWxs
b2NhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hp
cHMuY29tPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzd0BrZXJuZWwub3JnPgoK
KEkgcGVyc29uYWxseSB0aGluayB3ZSBzaG91bGQgYmUgcHJvZ3Jlc3NpdmUgd2l0aCB0aGVzZSBj
aGFuZ2VzLApCYXJ0b3N6IG1heSBiZSBtb3JlIGNhcmVmdWwuKQoKPiAtICAgICAgIGdjLT5iYXNl
ID0gYmFuay0+cGluX2Jhc2U7Cj4gKyAgICAgICBnYy0+YmFzZSA9IC0xOwoKQ2FuIHdlIHJlbW92
ZSB0aGUgd2hvbGUgLT5waW5fYmFzZSBuZXh0IGtlcm5lbCBjeWNsZSBpZiB0aGlzIGFsbApnb2Vz
IHdlbGw/CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
