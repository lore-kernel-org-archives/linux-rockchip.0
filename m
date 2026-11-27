Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BC9606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 16:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PokkA5QA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Tatk61U7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0nEnrJXcxIwumuQmr/qZD2ZKjyvwCkB/h5QdGYlbQiE=; b=PokkA5QAZzrnB0/CvREyaujD3C
	5iQosf5qqrGHfuQDDKmQodstkBQ78UPty+5Z0bbpq9KhI0eSA1T3KsrHBC2XEpIkNQyvLuTZo4ta8
	KTrlCpGuw22okXfjrs6GSpr3UdoUFFDITkJtbfaOzZHOQXk3GOEA3ZJJZnX6+cv050J2ULp4tDBxw
	JhMr2lfQC8S2qyOTPGYzwbVwMNx28ZPysc1a/fuvYyoYF2AsrPHrOrNxT5pqrAz+oxXJB7ujfVNH3
	BH2yuG7oJQl1BEgI/qOZW0Ra9z5Od2r+dI1fW9shlyZAGTlUodWWglqfD1BTKFCBjHsO7kfATpGc9
	iOFtOD5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyRh-0000000GzoX-1ULK;
	Fri, 27 Nov 2026 16:05:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyQV-0000000GzB8-3RZY;
	Fri, 27 Nov 2026 16:03:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A0664338F;
	Fri, 27 Nov 2026 16:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 686461F000C1;
	Fri, 27 Nov 2026 16:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795435;
	bh=wtVEXrF7PDLdob07RHXl5wJ+Psj2mWm2urShu9UZE9M=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Tatk61U76lqiOESNFnTt0uo9+grvZOcfVkftvVc/AKPTdDhSlYKQuP4NzkeBFTR2h
	 8nDvzvbwoXde+P20jaKhtfmUz8lyfQ/FIUlnYijgzDohJooAoIsx55AUR2nEVmpP6T
	 4XPaxQrvNrZTz1jC+KpG3HFrs7VXepNG4Y0fwTgSM7uckaoFRnlrgHWewRk1vQUqaD
	 5cYP6lwMyyXD7u+afMt2dUGhS6crF48qlRSgLkFeFqNxP6PzouQa74S7Az/nvtepDa
	 qEnGkKuoZGlqfNJlRXs88yERql1yRYMsQoPnSkTaxCyMoTJmUcYepNNW7XiAXwl5bV
	 jLOiG1S2oMEoA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3] phy: rockchip: inno-dsidphy: Fix 1.5GHz timing
 table rate units
From: Manivannan Sadhasivam <mani@kernel.org>
To: Xiangyu Zhu <jerrytech92@163.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
 heiko@sntech.de, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20261124092154.2280807-1-jerrytech92@163.com>
References: <20261124092154.2280807-1-jerrytech92@163.com>
Date: Fri, 27 Nov 2026 21:33:48 +0530
Message-Id: <179579542861.13164.10889997089822321805.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=975; i=mani@kernel.org;
 h=from:subject:message-id; bh=fqhy0jTAmYLSiPQeXBdoCC/NsqaLflMfCK0DiJd7z00=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCannhwo7BH8kdLwZBak4s8F3AlxwM0HxDBW9h
 St7b+H6HEqJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmp5wAKCRBVnxHm/pHO
 9RtRB/42BG60xUYUb5E53oEI4AA7CqyGQ7AovZH+QzrKyDt+7Q/2TvppRwuSS6cD2I15x8EGkAa
 zvtOhyw3U3kXgqkUjNTCIZ8JA6CwDichviSwJd3pi9yegk946fdARYH4YYHbkeQ06tDEKnFiWkz
 nyOLdMErq2WRNgEvr4upPaUGpzHgBMfANaWYhbNL2xzQZiGk04ACqVeeAWYFdg4oPVzcJXvmWYG
 JP95/+nyejhzMKtAPHs6DRGEfJnkWIwe+46Xo0oeXPtjPsPUe+Ltr/wjY0Zx0i0UyY3kIn59ykA
 4b4JwJ9GsrMOJAXni1USepexj0fYm1f9V2Pd+qNqlm9Sd2Ty
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-24 17:21 +0800, Xiangyu Zhu wrote:
> The 1.5 GHz Innosilicon DSI PHY timing table stores its rates in Mbps,
> whereas the other timing tables and the lookup loop use Hz. When
> enabling a mode, the driver compares inno->pll.rate in Hz (e.g.
> 372000000) against timings[].rate in Mbps (e.g. 400), so no entry
> matches. The loop falls through to the last, fastest entry and programs
> an excessively large TLPX/LPX counter, preventing panels from decoding
> low-power DCS initialization commands.
> 
> Convert the 1.5 GHz timing table rate values to Hz so the lookup
> selects the matching entry.
> 
> Tested on an RK3506B board: the panel receives the low-power init
> sequence and the framebuffer console displays properly.
> 
> Fixes: 785a9d5bb145 ("phy: rockchip: inno-dsidphy: Add support for rk3506")
> Signed-off-by: Xiangyu Zhu <jerrytech92@163.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
