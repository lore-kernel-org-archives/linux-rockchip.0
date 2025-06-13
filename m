Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D834CC71148
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 20:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HjqqxQeWhfW0VHAaynm1ZzzUrPCiefOSMowfF0ODmSo=; b=pX+sjppfde+zD6
	mKjLGkM69MfMv2kaM/xiyPY6Q/MdnLsGd7X4xQWQddlPmgMWvxsifKDw4rJsSlUOCIBQVaCA4R+xQ
	VPAqP90t5FM67hX/pnatfDJ8LTgUzj7eaPMn3Pn5xdCEXOwX/pFmNNr1H8Q4QRV9K9GY5KCSZodg1
	yf91//srfV/9ckH4yxRYSxFBwBWm5Z1pBgk8hAvKyLJFjwFnefPo8YKhChgp7lUXxcDp32D0BGECS
	mYu6b2UiW9mogHkLNfF9TSadxDsmb3GLaS0c2hPwM310OTc9r7OOIqxudma5JvtumBzpvPDWtIwPb
	ppB/6R8hFn++JtGYvsww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQArG-0000000HYIP-2RdA;
	Fri, 13 Jun 2025 20:18:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQAoU-0000000HXoj-1rfD;
	Fri, 13 Jun 2025 20:15:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 94604A519BF;
	Fri, 13 Jun 2025 20:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EA52C4CEE3;
	Fri, 13 Jun 2025 20:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749845745;
	bh=BxIOv+q5sxxjZyf80LYLCzxauGtrUO/Zi6PqDpr67h0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=o+jzNVqz6u6TfgD6nrqxLsvy4t8NSCF4OBdOTo+K7x7eSUAyfsEE4xcA54VHFfJW3
	 Z9okaMokUjeXkcLo6mXFci1sMNLH7sG+KM/ismwkQcTS44Kd4uciEuUXqE6jZYq9sP
	 jz5RH3kv1nNAxajxABKGdcmMzpV151s9KfyHQGvEVqw6BwQNWZDkgjOyAASOMGUspY
	 fH4eSKB7Ik0qxhkXZj+7ck3Z6LYx8auCe+jE6MRhfqAIe4Eub1izXKxFd1tgrUXZks
	 Jz6iAAS67THUxGLfGZk4qBvisehhM+bd8o4kTQFRqJlJwtCX5dUrvO8bFSNern5DcN
	 JqKbwp65lN7xw==
Date: Fri, 13 Jun 2025 15:15:43 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND RFC PATCH v4 3/5] PCI: rockchip: Set Target Link Speed
 before retraining
Message-ID: <20250613201543.GA974034@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <affaa12fedbb6e34696242d1f2f2dc5634b72005.1749827015.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_131546_555408_429B4380 
X-CRM114-Status: UNSURE (   7.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 13, 2025 at 12:06:00PM -0300, Geraldo Nascimento wrote:
> Current code may fail Gen2 retraining if Target Link Speed
> is set to 2.5 GT/s in Link Control and Status Register 2.
> Set it to 5.0 GT/s accordingly.

Nit: I don't know what "Gen2" means (and the spec warns against
assuming spec rev maps one-to-one to a speed), so try to use the
actual speed instead of "GenX".

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
