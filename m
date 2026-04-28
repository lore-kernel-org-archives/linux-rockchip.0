Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5820BFF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 01:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JnOEunjLK5Z2GkZg9PsWfwNDJKtyEFETcKVXweyvgg=; b=YEkNK5UBNOm7wt
	Ckgp3mW9Gz+ljSHRE9pqy3a4h98hDnlTNzHTYTjyQtzNwNMakRtmZddT7Kuy+yBdAGkpGHE0XMasS
	PNQ+sbGOuPn1o9RptdpxLTLUl5K32zKp19yr86K5/rtnljhf1sdIKveWyRSOkBAk0SEvi7Dbazdzw
	qSC4pGFeU7ac8KvySQ0jupLOzvgrNs7/fjzjMXeLuywzAGzRzt1HjZOt35tz5uBsT+0xKZBWSWmvN
	yUer3nPFshDQUp9F8DhBCuM1GRWCR2jbMd1L5Wz10SLpPZB7baWO33IYnTAEd7MfTR95OKmJpz6vg
	nxLPhS/POo3Tqr0xfaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXJH-00000000OFC-2C1X;
	Tue, 28 Apr 2026 01:32:23 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXJE-00000000ODr-1gAy
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 01:32:22 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2b25cf1b5f0so59368035ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 18:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20251104.gappssmtp.com; s=20251104; t=1777339939; x=1777944739; darn=lists.infradead.org;
        h=references:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2PMSr9SUypRFje2+As/Y2378jivS1IQ2hBaeRfXknxc=;
        b=OVqdSwwJRlIfGG8I17QVvMPlK06vPqpppLmqEoy00G/HDQQOASwAWqHcJKITNF7FR/
         SsGlsSX1BUAp4Z/TfSBX+a42dCotrw4GNMRFFY7MZTlNC7HQ5JQaQgupLmGOYm6km6wJ
         Ka2jxaoLUPDzOfcc/aVUshCAMWr/MLrPHfs5alp7RWzf9anmbauI6aAKwCg0vOMV4ThI
         dfGLF1jLVR73O7vAGzqe8hXZ0I6uQgkQ2rqlyGHB7al6+ER2ys9WEE9+w/lKNmKWYbGL
         BLZQZgkBLx5EVVBKDzn2QhIkDFCqqoO7lWYH2j+Z28t1dU680VsNqy2VayyLabib8dCi
         xc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777339939; x=1777944739;
        h=references:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2PMSr9SUypRFje2+As/Y2378jivS1IQ2hBaeRfXknxc=;
        b=oghmyhFF/Bu7OinDWwv6FTN63dSAXW5G881C8CBnPhNmsUT0GD95P3qZVP//3I6mVZ
         C6WAnmOpOusQ/NAN8oZ4a4HHQB8k3Cn3C6hJPTnu2dFdhlGMUZpnky54Z5QLCu3dpFR2
         Pikk5o658/U1m3dn0FOA225gAaYCHnMF9mIlyv74QWxyQgE5Z9lEv1J1CvYiATYBtAbB
         iq6ORk+wCV0IsemEi0bSoFVLpT3n073OB7YokavE6fFKIf8dTWdIPOUAVv+vTtDOZjbc
         9hBtVosyVNf/DG7YCNreiKdCGUNWdYO1kPju38wVLOgND/Kyvo2EDsaivJ3H6R9laESM
         rj0Q==
X-Forwarded-Encrypted: i=1; AFNElJ9UU6yccaGGAiY/L17Cv+Zp9RJsNlEFYCRMjkNKy2jOwd4s4up6etHR3tIN7TF5dEOWTkQOdJU+MuIDHk7Iiw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfM/pb2uWc9W5SxZnF17TW9zULzwhnhQzf9uVP6MPbnMI/7TcN
	zf2aE+PK5ZUm+rvpWHqt//3rO+wcCT7T06ioCsU8ZWgpdpoTHYIRS5b7ruqVyxU2hqQ=
X-Gm-Gg: AeBDieuwDgdQMKUks9WAOaNjUxhTO/99CzYFmxzRqALz/H+ag6LD7HLx0qduduu6OkI
	Wf9Sstlud5MKuzXGEFNz6k9O74Yr81pYtTRE+teSOrRNUnN5faC9FYXVvRKgjk/Mzji0XNLexGc
	HbSlJ6eON5/w03mJXgEOvedQ2kFf8IVH2jyeFJy/Wp+nP3o0kEuJZ4s0//30RaYszchQi5rv2EP
	GuwXIyesJCtJDjwe5wI5Js6FMX7w40y+M9Y/MLyjjCBy6Pnuk50PIFeIWliYkzEYtim3qd/i0lt
	52FyKkAFL8tR7LXYefueL2MUKOVdYIx0KRSUwiomiB2vcKp2YDXRwPLWGliVDzFY68cU4qD+gEH
	NVBU0v0pWgfBLEZOFEFuYl693IakxGigmm4G5ZFBDacp51+bIRAapJP3rCkO3/1EuRJ9t8dh5mG
	R/rvRgCkYAtEek+n9/UgBa6Nufe7gj/wZ20bIoSMekeubOyF3TeR+uBY3P9CrAMuoid/y1+NxLR
	wA7S+uZCww=
X-Received: by 2002:a17:903:1cd:b0:2b7:a89d:6135 with SMTP id d9443c01a7336-2b97c3fab8amr9326525ad.13.1777339938955;
        Mon, 27 Apr 2026 18:32:18 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b97ac78880sm7441665ad.40.2026.04.27.18.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 18:32:18 -0700 (PDT)
Date: Tue, 28 Apr 2026 01:32:17 +0000
From: Daniel Bozeman <daniel@orb.net>
To: shawn.lin@rock-chips.com, finley.xiao@rock-chips.com, jonas@kwiboo.se,
	ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <afAOIfNcy73GC7lU@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adRH235mv00OdOsb@claude-dev>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
 <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
 <693c6c27-6ff2-4ab0-994f-3821e5ffcec8@kwiboo.se>
 <adRH235mv00OdOsb@claude-dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_183220_668020_31E3E423 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
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

SGkgSm9uYXMsCgpKdXN0IGZvbGxvd2luZyB1cCDigJQgSSBoYXZlIHRoZSBOYW5vUGkgWmVybzIg
b24gbXkgYmVuY2ggYW5kIGFtCmhhcHB5IHRvIHJ1biBhbnkgdGVzdHMgaWYgdGhhdCB3b3VsZCBi
ZSBoZWxwZnVsLgoKSSBjYW4gY29uZmlybSB0aGUgRVBST0JFX0RFRkVSIHRlYXJkb3duIGNyYXNo
IGlzIHN0aWxsCnJlcHJvZHVjaWJsZSBvbiB5b3VyIG5leHQtMjAyNjA0MDMtcmszNTI4IGJyYW5j
aCAoNy4wLXJjNikKd2l0aCB5b3VyIGNvbmRpdGlvbmFsIE5PX1NUQVlfT04gZml4IGFwcGxpZWQu
IElmIHlvdSdkIGxpa2UKbWUgdG8gdGVzdCBhIGRpZmZlcmVudCBhcHByb2FjaCBvciBnYXRoZXIg
YWRkaXRpb25hbCBkZWJ1ZwpvdXRwdXQsIGp1c3QgbGV0IG1lIGtub3cuCgpUaGFua3MsCkRhbmll
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
