Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DB03C624D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 10:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlIWIpo4SP3aP92HQqYRhCntoY+O76Ygw6vZ18kvlhA=; b=rvCRYndPqfgdp/
	HJltgvSGPaw9SzG9Ip1SB1YTt7nQqs86udCm8S9ejPl6TobXMTM8faKVNsiw3mNY68Mrhh6cK3DUF
	czPr9034XBbEaTK1+UB4jM8JqB8Sw1WHrmX1zS2poamQLd0vnoy7UHI9hbA3KrClNH8TP2OJTTZRt
	pwiFMOFLVTwZq2R978GSQLh50Fal8s+tHVWcp+fPTRoeXl75iimWxSvFRo7RMQ0i+rqkC1KUlr3xb
	Z2FEF5x0HrOmFygLVVRBL7mcTj11tNwFkPRmNepGEetkTI8Ft416jn5G4CS8Yr8tEDGAOldE3kHAD
	ZjuANfdAn8jc0qe38vcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hnL-0000000EJ60-48lB;
	Wed, 02 Sep 2026 10:02:15 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hnK-0000000EJ4w-0wY4
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 10:02:15 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48431632951so106318f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 03:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788343331; x=1788948131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dFXB7NNkv6fd9dgrONxWMWNxCL/FcNjOb3t58PmeVFQ=;
        b=YImE9tu3DhlEqlcDJaYbtHZzPLYYod95/vCAglqCYVfT1k1jPnhT11H3c/SetFFLJd
         xuW+pIlUTvysduDmmmVTxQkijmiG54KXxRTwpbQIDu+uZ51Bl7bd+T34KKxyP4Oh5Yy8
         wO58Di2g0C+sUvqLOIF5XNKdzNfJwZSK125n7rPh3AFKxVOPfYw5IFgSNQvD5/WEv6wn
         h3p3/jKVOkZge+P4vYp5nbLtbLpd7Nep43ARwenxsUfAYXMCuIMMbGu/Punz57n6UXvP
         PNEsSeJXEZgEwFUCopsIPZAqdOtWSFaRXS7kHhW7pkMEUtNidsbNfh9lft1NFgw4yEWp
         fYsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788343331; x=1788948131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dFXB7NNkv6fd9dgrONxWMWNxCL/FcNjOb3t58PmeVFQ=;
        b=kB13I7mImsuXqUnzAV6uEn5CNYplahawKaEsyrztkbQr6s2wYGbuq2Zlzx6oTflyVd
         h5ng4dnx0E7oDCMKmkSVCiF4kbTnTPFTmXZBBkioOLkWlKZrTN652ClEMviYPyWZ5ncJ
         JOG2ye754F5tPkStSfyTYWGXz2DuamKkLbBDfDXBW263c2uZHfI5MOAfKffjYmCchOIK
         RWV0JK92/aULznrMHU+YFEP2CL/sxXcHifGXVSH7tyXkQ3eCzE+ehRjpoe1EXdCXXqQH
         Y2Nk1jrcnpHYqTdZyM7Ll8jil0D8+rcRfcuT7m7LpAD/NKJE9cKwmM6QuyTg3nuJMU1o
         BSFA==
X-Forwarded-Encrypted: i=1; AHgh+Rq93xeylw1yoPSmcgm8ErqiQf/jHRsK73LUyZoTnb1PsXH3Y6m1zZoZo1fINCAkIELTlGHR6CZOT4PQspbfPQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lpx8gRtyGqiIC7ggFRA1GvAFO8Em16dwrhX0qMxACuPhMbXwEj
	VDQURt+wQpNIf8SQdZ9eFE2mUDK1nVobaJngIGgBTqE5t4Lty+M/d96t
X-Gm-Gg: AR+sD11nRYv09XKfEa6FIY+eIkTuWGjJsvzc1Cwslv8TgxncXfKWGcQcZnbsCv+D9bC
	qj83p3AsYoajGyyVCQNg4K7IIHoWfr4fR9Ob3I5rvg/81E9STSJY+DNo8SYJsoZQZkWhSFK4a0M
	Q0ISHAPrTlGJtW8RgFkZy+pC4P2rXZWfhLPt0LbJM0xNkQzL9nu8BFxslT0tSDt5tf2itBolXfq
	FCKq6h1vYEPtVjDdwmWg3LumjXUA1OWC4D50UZBtyh2v2AVcRpStbfZgXQROFndz6glr3JFlWyW
	C8V0w+tnmLQ/zyws2vAMbiXS89EmWrQ2d/4xAjPX2BWFkA/r1+8V2LdNEH9aSw9RrzJ5LZlpAZP
	QcZMTEQlzOF31LI89DhwzCZbEdTb97S0NewND5TudqOvwR95afLm/45/vPTA1h3OkhJLRoxN6sd
	HsQe6/khAOHuA463QjyZnDoXFYFoS2Wze4XSwViF2HtTtBdtp6ZzzLca1I2mjuPSPk/DKGTc3EZ
	EPiL8ALProg+ASB4RUOeayGzQ7wb1Bq5xUahOjMtq1Dz0wHp7OdDH0KQz36DucEmfToOw==
X-Received: by 2002:a05:600c:5487:b0:49c:ca33:9553 with SMTP id 5b1f17b1804b1-49ce580c9b7mr27081125e9.2.1788343331178;
        Wed, 02 Sep 2026 03:02:11 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B831700C106E30F6C827C62.dsl.pool.telekom.hu. [2001:4c4e:1b83:1700:c106:e30f:6c82:7c62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cdd73f7a4sm138612215e9.12.2026.09.02.03.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 03:02:10 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v9 05/13] dt-bindings: npu: rockchip: add rockchip,rk3576-rknn-core
Date: Wed,  2 Sep 2026 12:01:39 +0200
Message-ID: <20260902100147.16191-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260831040751.24030-1-gahing@gahingwoo.com>
References: <CAEWPSH5_PmfUCEm5O53=32NQjPKMd4vm--Y2R=4ErMoehtt=tA@mail.gmail.com> <20260831040751.24030-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_030214_288357_D358B970 
X-CRM114-Status: GOOD (  14.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jiaxing,

> Here is the table. It does not say what I told you it said, so the
> retraction comes first.

Thank you for the table, and for leading with the retraction. The
replacement is worth more than the sentence it replaces: 364 of 364
with a single register partitioning the two groups one to one is a
field with a reason, even if what selects the arm is still open.

The third value is the honest kind of catch too - a row that breaks
the lockstep and narrows the claim to the regular datapath instead
of being averaged into it.

> The script that produces every number in it is small enough to
> send if you want to re-run it against your own corpus.

Yes, please send it. One honest note first: there is no vendor
.rknn on this disk - everything on my RK3588 side is upstream Mesa
and generated TFLite, and the script reads .rknn. So the run worth
doing from here is the axis your corpus cannot test: all 94 of your
files carry the same 2.3.2 build string, and I will try to collect
files produced by other toolkit versions and point the script at
those. If 34/66 <-> 0x4044 holds across versions, that is one more
thing RESERVED_0 is not.

On v11: the clocks patch carried exactly as sent, authorship chain
intact. Thank you for doing that carefully.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
