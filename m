Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A622C606A32A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 17:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TjnfGgu4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KOh7GSBw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JNmoQrouV+Oj8UCPK7k/m/xnzrz79G6kObYBsrpj3Rg=; b=TjnfGgu4ZFwNyX4OgsX5F7D2P4
	AJ2bl+9PF6nqffvb/F2Z+tQgJgzNW6hXKlnrMsNW3h9V/5/aiRbJfbJplZOe+c79/chgFOzZ+JwJH
	nr6bljd2aA/RxieeGhcN3B8Z8rfpbKU1MExmXNG+B4cuhscbC9S1Fx5KAsWuz0sgU6TSHrI9Z046l
	pAHqAfTHc/aWGQor+A1liInDN70MdtYiwM7GssgeNrb5bmanZ33mSV5LxsSCRsabGcQxhOPftSAbZ
	6e4vSn6KqVcQdK/C+Ggc2BbjEi7QZUI6PJejoAHKPKGWYzjHM7Z+RavM6SggfpUZL3h1hXP1yRe9F
	clBLBiOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM7Ub-00000007fHn-3CXU;
	Wed, 28 Oct 2026 17:31:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM7UY-00000007fGh-0S1B
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 17:31:15 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-48e47347279so969835f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 10:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793208671; x=1793813471; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A+RGXs8/Ail6qHnGbLflY644jEJYQOYM38RZLvyetKE=;
        b=KOh7GSBwdNjjLaazuJbpFu55b7f8bfvo+9+DKHXmluL22WQ+2GXDNio4DRVTWfGozJ
         OrL+zR6PxMxXtpMyFHM12Ng2jp8zpK7G7TllCLjbyzXfRM5lkLkn/Pw0vgNtPZbjKr32
         QMto+WD63h83ZhJs2wOYpgwR3fJQ2CjzAFnEEKhln/NbmOQ7b4uwNA7C8+iutrkMOI1F
         WozU8eL5qtntZyfnHE/AM0ZI+Dq4N8DWl+paBJUBkICNPvwvTfP1A68c9UZPqncPj2qQ
         S9geeg2OISxSPc8g5TgQuRZdtcP2dy+BHia2tzvD67mWV7rUE8Lh+EJ12I68Pn6eCfCl
         NLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793208671; x=1793813471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=A+RGXs8/Ail6qHnGbLflY644jEJYQOYM38RZLvyetKE=;
        b=Ma6urLOGiAPGylZDsBQP3ri36rYJrodBtbYzJSfZAy0p+cjuwSyjXjWbaGthPoSQGO
         BGv9dXs/DEMZlOnRikRUck9Th4fSHmPM0pmCloWLhAq2dBrF+pIdt5ydgegZw6gp7KF8
         IjpR9vdmKXd4Ugd+ITm1IIgwyl0d3xuxnYz10wMIjwhJNuDr9ghi8hoBNFgw6mc+Z+/X
         GyjhZo3ayFNVgW4F/cfQbnf5EivzQb4G6VYBviwU7RtwDLnpV0ZLaasPEBNH17WYkm6G
         juG3Wl65lWTl5fcVOTWzudkTE4PANILQSIlNqFWIixtOg/KIWdTAfib13iU7xqGq+Gdg
         DPrg==
X-Forwarded-Encrypted: i=1; AKwUvBz41WiWpYTbEakj0uR59UYvv7OzgstWMwvT0pB6J4h0Vc1LQjLzlaqp/bulkVxTSr5JrSVyfeRLVD2kmuhJYg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJRVtIEqnnYuXbxZAmKzTuX9+CEWUKiiuPkE3JqLu83GdcwUrK0
	kJcGMtB4pwypFCgo1xNT9WKwc0Nu6GnhcagbPiyk414O0I0uehN9xvAR
X-Gm-Gg: AYBFou2YxE6mZHUj/uS8dTRr87veUHmpSnqzhxauCsrZ4cBCgxsZR9AXLxoyKtu72OG
	v0ciBb+umJ99miQscOBXHjFf38bA2Tth2g1zcmDrFcaRBpjfZTSdDEajXJC6TJXRzLFlrrYiL18
	5KXoOS47nbjZH+YO2SSLUKcusVU7eZj37w5JDbPBhlRkF6FJytVf4bjCmOUmzed8Q8IXMa84JgT
	TZVVx220tURsL4adeILQvG7IqS4vAznSqsVCYM+9i1pQD1+CjKA4ONFoTjdjHOaVcLazPdvaHyR
	3SZxKiRTdVeA9t8RJ21wCL6cNvnmqXCxnU3GQIzqnqrdCQJ7VrqzhO6oZzkcW5+sgteWi1xhQ3N
	9u1Il6Qx0QmRNiL4q6e4Pg+DkY57JKy/X/SPrWyxDc5PkbS1Ing1vkec+HTzaSzVMFy0qi5DxPK
	0yJt4TdLAmnXbOXUOyCMtKZkuIzqvgVTxObol6UwsI1xdyPGOEEfoQLbh9AEaybtuJOHivWBhFG
	DjG2TpinADv2LdB2nN3qQezOEho8w2S33HCCcfLIfCzbBg2rqWhidpagrTA4x89BK1n7TKv/DDX
	0qHalAlH8+m0/Ht9+EHhgpRiK0463gmazb8YueaVeCSmkkpvRXtTxa1jgurt5o5XZf2W2igMPDS
	XR6AvQ8a0iksk4nDqfGRTxF6y1+vCAg/UBG7FuQcWUF+5wXOiKbbiU8b7t4aBBpk5biQ=
X-Received: by 2002:a5d:588a:0:b0:48e:25e1:5eb8 with SMTP id ffacd0b85a97d-48e5d58d590mr7802427f8f.3.1793208671431;
        Wed, 28 Oct 2026 10:31:11 -0700 (PDT)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebc39a8sm30601206f8f.11.2026.10.28.10.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 10:31:10 -0700 (PDT)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: iav@iav.lv
Cc: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	manivannan.sadhasivam@oss.qualcomm.com,
	bhelgaas@google.com,
	robh@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is already valid
Date: Wed, 28 Oct 2026 17:31:08 +0000
Message-ID: <20261028173108.3457165-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261028-h64-tpvperl-ab-skip@iav.lv>
References: <20260911211559.207990-1-ehbello@gmail.com> <179196286749.38040.5597453767131590054.b4-reply@b4> <20261016-h64-pcie-resume-tpvperl@iav.lv> <20261028005548.2399155-1-ehbello@gmail.com> <20261028-h64-tpvperl-ab-skip@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_103114_183434_FE86E381 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -1.1 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-2.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 28 Oct 2026 05:10:00 +0000, Igor Velkov wrote:

> Since the next version keeps the full wait on resume, it no longer
> changes the resume path, so I'll skip the A/B and test that version
> on Helios64 instead: boots plus s2idle cycles, results in reply to it.

Thank you -- that coverage is worth a lot, but hold off a little, because the
shape is changing again.

Shawn Lin has asked for a DT property for the PERST# pulse rather than a
decision taken in the driver, matching rockchip,perst-inactive-ms and
rockchip,s2r-perst-inactive-ms in the vendor dwc driver, and I have agreed. So
the version to test is that one, not the probe-only patch I was about to send.

Whether the default changes or stays at PCIE_T_PVPERL_MS is still open, so I
will put the DT snippet to set on a Helios64 in the cover letter instead of
leaving it to guesswork.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
