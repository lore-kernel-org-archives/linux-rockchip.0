Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B77606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 10:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j5yIKPgK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Kbr/pnQ1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JvyhcNp3Hk8+9c7oTtw5KJP3uM4c3WfK4pG1gchioKI=; b=j5yIKPgKrOgzLU/sXfgybO5+5+
	29P5L31aLTWLDNCe2q0dwHmcBKUlL1x4Sdst2Dr9nF7EokIsHVYdi8OZ+cVWsOpln91OJ8v4W9nc4
	VpxOCcS4i7cXK6uOV0HHPVOAtyHtRZsCgQOeL2iyriZidrmx1Pm48cWaoQ/cxU5eNPosiTkrklEEa
	LzbNcP7xIkzXIR9en4LaJx9n107xM3GhMAWIBl2jG2cuwdl0z+D8HFDhbq+tqkfzVtUjZau1f38p6
	4dwN5/iFEfQT59l5hSo8NwkSLALG9fQWCFydlgbThhsnUeYH4TKZ3Gpa14GFi+f/x5wfhmgNrm7Bk
	tK5N8xVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtVS-0000000FfCy-0DEl;
	Fri, 27 Nov 2026 10:48:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtVQ-0000000FfC9-2j0Q;
	Fri, 27 Nov 2026 10:48:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D02641A4E;
	Fri, 27 Nov 2026 10:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56ACC1F00893;
	Fri, 27 Nov 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795776518;
	bh=xbIVzEbL8kVnnZTjUzEkeuHQU6E0lvFPu/zhf9T/vnY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Kbr/pnQ1fLCyX99zsQPvOOFZJGiaTl5WmYwmioPQq3E1aZ3NU1kb2zjhKu7ZW1EIf
	 YrxQDBSJGF72g7DTrYF9V83aFbKIplXZ6cwKCG6smoF+JJCCW0v9vEQaQzRxDe7/l9
	 9LGS9nRNnBFROCMkeWCOOTauod0tXo4AsLWv8Sosgv/VkDQBrLx6//V19amCCgSsJ7
	 iVahPWd9MFzx7qID/fHTNJUoJRDI6vFT21XqyPSmcyDvoNH/YUHDgE8kY0F+P6VOLY
	 nDI6KLMIU4oz86NmaZeuSa4HChBphsS5JqXX/KbyrA6WBAPu5BgtEOd3V4vVR7++aq
	 nvVvNwvxvTbZA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v18 1/7] phy: rockchip: usbdp: Disable USB3 port during
 normal power-on
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>, 
 Igor Paunovic <royalnet026@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com
In-Reply-To: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-1-fb325e336494@collabora.com>
References: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
 <20261119-b4-rockchip-usbdp-cleanup-part3-v18-1-fb325e336494@collabora.com>
Date: Fri, 27 Nov 2026 16:18:24 +0530
Message-Id: <179577650427.3421.13284769035629435945.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=728; i=mani@kernel.org;
 h=from:subject:message-id; bh=Hcccq0AVhGSNy+J7A6d1nbyFCmB2XvvEI6d3xYzYvcY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCV/7EWPHe5YpwqnHnHnu6N5jcMJFThHeLYpuT
 rGsyyzCW76JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlf+wAKCRBVnxHm/pHO
 9WVbB/sEL9JxyPEqg/bZ3k/FFPESBckNQlW/bsQnS+IWMqUC/A5lpMnw18OZcT1hujJbY96wgFr
 727lYb36eNrxxtjB+tH3ezFhtMfrXixWd7ndiceUD2nuU/1fPm0X0RNlkvhtEKKLiXtpR3W2C47
 7r5gQO6qWfSKgzsvGpO9+VwbtjEaCrQz7lkAOPsi0KwkxguaPrD0e5ifFRseVJPaa3KYX4DK5ET
 /3lCnPVmKPOipnYW1HRzxzh1k4d7Kz9E4FE56K9IEGHS4XZUvRCwRiSX7jjph5gcyd1rlcD7mAC
 N72Cj1tkoDySD/JjXEuebB0QaSoc35T6QTXxqgSpKqw9XoJ4
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

On 2026-11-19 20:40 +0100, Sebastian Reichel wrote:
> In the reset path, the USB3 port is disabled. This re-routes the clock
> going from the PHY to the USB3 controller. This adds the same to the
> normal power-on path, so that it behaves exactly the same (except that
> the clocks routed to the PHY stay enabled in the reset path).
> 
> This hasn't been done so far, as it requires the recently introduced
> PHY reset infrastructure to avoid the PHY PLL not locking during
> startup.
> 
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
