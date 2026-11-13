Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E439D606A8A7
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 21:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I1Dl3KvT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=FgulRQCM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=q7aAchcl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zrIgd1r1nMyzTvUBt+XZstQTvLAZ4Yf44ZFK3XsjJN8=; b=I1Dl3KvTHb3AqeOPHHzRYrDHpl
	IPc7xR8w7HDar9g+zerl97sggP18E2ULMnClHsxTvEaggOVM7Oy9ZQRnABcC+WFIJ+chCQsVEi1BW
	yaI8CTxwFIrGeS31R6rwj9j1JNmf0+caTK07MZ6bogVVKdUv7YI+7oEyNE4ByAnrVCxQFekYXcrHb
	wYlNSWGyFUw9nZlaBwXKOrMQF2WPt14mgChbEiZ9/7UhKGujgrySrDGYJ+OYGoWHvNSi+LUMmqc7C
	mhTahLdkrlUZe/q+87AJimZJ6L66a9/9IUyXyMz9Q8Q42tQn45k6d/Gf66dG2Xv8swrusp2ZvJJJH
	J5raCmeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyW8-0000000EXBy-2dg7;
	Fri, 13 Nov 2026 21:09:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyVP-0000000EWnc-03jl;
	Fri, 13 Nov 2026 21:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=nTWhZFEhQHsmtsz8gu1pvZwk6WEInEV5R1xDIdW6aS0=; b=FgulRQCMAC/mnTquDgQNreahjI
	d4S2hDTG1J2Vo3Wz4oViodDLHVCA/MFCOatCB0QuxsIHUGwx1DqkqkOTPSYUWUqv+o3eswD41urCM
	u4OwqmaDEskbfQEkymMf5PrbEmdRkt3hFYIX/KfVsEOngdZl31dD7AdQLBp6KuygjGq1crO/P36PW
	gbKgd7/j5n5Jef27w4x1ptKyBkzke1hqzux713tR967LmaCE5ZelL8z7rIY1PoStTWpB6sVBnCT2K
	SjT5AUIYnfVVrYFS3xTfJXSZz90uAIvRZzNdipawIgixbDY3QFR7urxl6+/UVJCGE5GI00qj5nXD8
	SfsYklaQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyVK-0000000Br4E-3RWz;
	Fri, 13 Nov 2026 21:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nTWhZFEhQHsmtsz8gu1pvZwk6WEInEV5R1xDIdW6aS0=; b=q7aAchcliIS1W978NdKZEiA7pH
	JrLAMjIddCUv9BUYvV/7IhmKAySpbROufMrQ2rGAyxvZU5vJs9ji5bs+805t7IKRupIlvqWaVhxqJ
	48EgvkQXJYTXQgxjL5WoGnAMMjUd4kBptgAR9dHR1CYl/SpTAxONmlMdOCzQY26OwL+/0EvLCtxP7
	51Ac3prl6nkkiVfzeaKMQZgcQo9JoTS0AZNjfqgIYXzy0VipDqR/L8oEQa8+rYHDWRmI7D3stgCai
	iBDK7yPvCzmAUT8KnuCj6H4yzI20xaxFrNLirea9Ll+MtQ3bk6mAjWF1g/tA7qpOASDPmJ5cY+TlA
	ERt9sCAQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Igor Velkov <iav@iav.lv>
Cc: Heiko Stuebner <heiko@sntech.de>,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	luca.ceresoli@bootlin.com
Subject: Re: [PATCH] arm64: dts: rockchip: Enable SDR104 on the Kobol Helios64 SD card
Date: Fri, 13 Nov 2026 22:08:02 +0100
Message-ID: <179460406458.1165597.11570162473311943903.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109-helios64-sd-uhs-v1-1-ef8fc370d282@iav.lv>
References: <20261109-helios64-sd-uhs-v1-1-ef8fc370d282@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_210814_908224_6A7F2DBD 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
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


On Mon, 09 Nov 2026 03:45:58 +0000, Igor Velkov wrote:
> The SD card I/O supply vcc_sdio_s0 can switch between 1.8 V and 3.0 V and
> is already described as vqmmc-supply and as the sdmmc I/O domain supply,
> but the card only runs in high speed mode.
> 
> Allow SDR104. With a SanDisk 32 GB card it runs at 148.5 MHz, and direct
> read goes from 23 MB/s to 53-66 MB/s.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable SDR104 on the Kobol Helios64 SD card
      commit: abf495038cc9f0693cecf54bd37d3200d5da942c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
