Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B75606A334
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U8eTtv8+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=CzSGUltm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=84KaGtMdJ23OvE9Af5LURwfVslUpY1GuAsNv62XB0PU=; b=U8eTtv8+VnVBEYW8UoeSiahJH/
	DOcdUp/ZvasFKPzhdG3Me3Epv862TJW//B24Iq0elm5p5UNsluxOWiSAG8HsdIZYYAHT9XhjT2ONj
	p2cMGGoBQ+nAa9FH1Qz27K/FzLdDd494Ek8cWEtv47wmu18f9KfVtTAYeasL6GV+ReB4Iyw90Fh75
	tm8+6nSsN9dX8U46fWyP0Iij7FDP5f7D9olgPLUMGDWXRt/xDlfKZrE7JxssVM4TTO88MlvqGD2on
	jLKIkuP34DsrCoddfBYdUQuNWclQXksrxMUGorkA5bEgtMQJ6qOEF1XTtMfsOei5nbqGSSghy4qdS
	AF4hPF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNds4-0000000F4dt-0pSO;
	Sun, 01 Nov 2026 22:17:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdrL-0000000F0Xu-1CX8;
	Sun, 01 Nov 2026 22:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Qn7fQ/WuImtrNrwAytucTquNZwzb54Hg+kTqL7gmoxA=; b=CzSGUltm5eVCpsFPFpmu2teIl3
	pCCMuFhCNrt+jIs3tl/m6p6bsKexs5jU+KZXxFoHk+VMixs2F7PSs7ERSo0OdxI6mmcBihNNpszOA
	eEnDAr+4TQQq6moGFkH+fiowTYy9fClKD5apbLYn1gAqKSei+2Nl4wXJn85Fsfeq8fJ34XQX//4L+
	78dfJKDe9z03KVOuvYbaiolk9YeRGKInlvAjzyxnRPrk3LwYZoV00c8kzdXRg9GjohkCpUOea+OVu
	gYAkoGEh9HzwVemNyAhhLVDq5U7WbD5onv1uAWhqz/l7t+AQaZwVnC4gad6Ctg/KGvU6vAVl3qxJY
	HfyBLkHA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Leonard Lausen <leonard@lausen.nl>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable Wi-Fi on the NanoPi M5
Date: Sun,  1 Nov 2026 23:16:11 +0100
Message-ID: <179357136492.4108155.17814114343295841881.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026070821.324094-1-leonard@lausen.nl>
References: <20261026070821.324094-1-leonard@lausen.nl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141703_490890_ED406CA2 
X-CRM114-Status: GOOD (  12.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 26 Oct 2026 07:06:50 +0000, Leonard Lausen wrote:
> The NanoPi M5 has an M.2 E-key slot for SDIO Wi-Fi modules such as the
> RTL8822CS-based AC200. The SDIO controller is disabled and the module's
> power sequence is not described, preventing the card from enumerating.
> 
> Enable the controller in four-bit SDR104 mode and connect its 3.3 V card
> and 1.8 V I/O supplies. Describe the active-low reset on GPIO1_C2, the
> 200 ms power-on delay used by the vendor device tree, and the external
> 32.768 kHz clock from the HYM8563 RTC. Keep the card powered during
> suspend as required by the rtw88 SDIO driver.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable Wi-Fi on the NanoPi M5
      commit: 2712e8fa4d1108b33ce3a49c9459d9b88489f639

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
