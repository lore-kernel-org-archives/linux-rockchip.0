Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633B9606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Hrm59xaX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BIqx48gV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7L80a78huAvPwKxkR2nvpm7nQE+fHnWRnKKIsG5b3pE=; b=Hrm59xaXmBzOmqoa5YVD8RTSN3
	IG6i/r080qnmhc3f9FhvbVKYE9mbJSRY2C9h6wOQW/VtTZSRaddfeJ7q7IrLVkfxQiUhkQ/HzgKpS
	IeebCeHrZwF6r/BSm1ZMdZvgQefPCnj2Om15g4b51D+JkF2kk5OJJ71ikXY4DZ3RZRDwE1SS/tXXb
	3CDduMgNg43GAw9sIf52flr//koacI+LeB41n3FUUovBp17pODVv/Kmq865MjgnjISt//nq25VLsy
	YmaBveYvDtVyAmvXEuGyg3Ncdczvt+ObNyuXFNIe4eO8f3aC5Ld/UlMcrwBp0LqgxYpCi9RgsZdLo
	U5B9PhMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSbp-0000000E4zI-1FWo;
	Sun, 01 Nov 2026 10:16:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSbo-0000000E4z2-0m1p;
	Sun, 01 Nov 2026 10:16:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E0945600E2;
	Sun,  1 Nov 2026 10:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 490771F000C1;
	Sun,  1 Nov 2026 10:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793528174;
	bh=WlyZSmXqoNem4BYxWTM4LbiDAqtNAeNEfmW9zP2dGqI=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=BIqx48gVerpSZp3TIv7S9rEWVLbSgq//SFRMil1HVp3LOdwPLoPm9dYOn98MfqZYH
	 6hcgUC8AdQ0MBYcIo8ec5E2onfidoy6PtYcIULNKgVCdSAVucUkuJ8nNc4KMq+Tzk4
	 LVVveSF5mU8o2DETRIjUSfKVRRCj21qwlD845qB4vz27leJBkoRuxJvSgweiWZde92
	 gOSyX4vvyGa3p28nO9gg260rWqL5n0nf9tVDKpB8K3VXWxa/oshQ5tX2z/3Vu5ZSez
	 dPdUutjWDIkY8E4saqEmfqlvrd66kxszuENNHsKbBbJW/oFdT3PErvV3xs5Z0W9H2m
	 mVDtZgVNEtf2w==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC
 control bit
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
Date: Sun, 01 Nov 2026 15:46:10 +0530
Message-Id: <179352817065.2955.12861358728899992039.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=819; i=mani@kernel.org;
 h=from:subject:message-id; bh=swTg6Ncr3SBC3tfOWyQgwR6RiQDdKAS9vN/fOLu60Cw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xFsyj+J03oXK/LW1Mh7hQdN0TRMcBq7xI7Y3
 f51oK4cR7KJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucRbAAKCRBVnxHm/pHO
 9c4gB/0fVuDYxlRny1zg37lWWevofXo/uIoYcKZ7ruzT672dQejgZtSGIMdz1lrQivBQUY/fftn
 /Nab1sjiY5iVgQoiozItGAethezmNkJyuJgcTx6a0jT7RkrnSCXPzJAFWQLKjibFikSxb/TWTkZ
 Qh+omLlpDhyF/qjWiZgeKgcVqaD/oqAPiAX1LS45MjrFR+iqG7/0QM153+MBjcfXw5oqNdP+ooP
 fqUTduZQCto83QOBNuUFeS7XA9qMRJ3YOGRxVm/BteyveZvfguw3c2+tCzmIVNbIpDNCP/9pFCJ
 GfGEIu+JYYYnDT4/YkXsxbPwPmfIJiNYF09Gtsnk65EhFtdH
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

On 2026-10-15 11:59 +0800, Shawn Lin wrote:
> rk_combphy_common_cfg_ssc() first sets RK3568_PHYREG33_PLL_SSC_CTRL on the
> RK3588 and RK3576 SoCs, then, for PCIe at 24MHz, programs the PLL KVCO
> adjust field. The latter used a plain writel() of the FIELD_PREP() value,
> which cleared all the other bits of RK3568_PHYREG33, including the
> PLL_SSC_CTRL bit that had just been set a few lines above.
> 
> Use rockchip_combphy_updatel() so that only the KVCO field is updated and
> the SSC control bit is preserved, as the comment and the pre-consolidation
> code intended.
> 
> Fixes: 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC configuration")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
