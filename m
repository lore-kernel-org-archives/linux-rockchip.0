Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21DF4C369D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 18:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tytXK/g6gxn37HmtsxDJP/ML9j2GfAOmDxlVWEXxuwA=; b=fDoyjjpP8NeRad
	KV9EICdk+ZeKadBK5yquJgHm5BWCj1QB4a19gfnalVv0uULJ+qU3AU9MivTqST8BNtiXq7Bk89mXV
	0bD6GgfYZvgHvmmoRsNxHJF9gDFHL6qdyIkqCnGGf4mRrAIeGyzk5suy0Y5eEU6bUy9povbaAHIYx
	YH13NylvCYXoxLLwxq582zPAnUGu4dCq4LqhpVMprSU8VRBGOI8GjMFz1KMAkWAGckhFUEftjqb+/
	oXQzyY7S5pQEm6Pu0T4qv873WXacfEFQ0ijMXQWr8uZlFp2P/9PAFo7H3oA+bwtYWOkMmOU/weWgp
	rjJtB3gVinQz5j+uxttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7eeD-0000000BWD0-01ac;
	Wed, 23 Apr 2025 18:16:37 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7eEp-0000000BPne-1dgq;
	Wed, 23 Apr 2025 17:50:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 47E6EA4BEDD;
	Wed, 23 Apr 2025 17:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79EBCC4CEE2;
	Wed, 23 Apr 2025 17:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745430622;
	bh=Egp3Yszj4dH8xTnJVf5ZAxkxoyrRymUIA54q4ihDQHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a7Hx2Et6Gc58QrcEBYMSxR4ISbAAzxE36+ukyUOr7y3CPDLBhIK0sTsC0/zxaYHEl
	 DfLzLcxqfCD4RAV2ToZbpZcVkpYp5JN8u7F5tlZYVb63jscDdepELpvhqdihfd8MOX
	 L6sPy/Lfjtzs106AqLsHozQ+8Bir45pOHn2mPLpVGoAVPd4h5vAbe9gNKUyJ1W0SQ1
	 wSmoHkgyHZls087dZMOY0oikCvUsKNvVmlbq/Hr8OqAYMhneUHgKkAm5Vy4KWy9ttS
	 mslgMN1ZZn4Te57TvTL9m8CZXJVTXhHcKA2pcq07gliK+vZpYDMm8lNZX9ZzZjhxdw
	 2C1CrEmYmAXrA==
Date: Wed, 23 Apr 2025 19:50:16 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/3] PCI: dw-rockchip: Reorganize register and
 bitfield definitions
Message-ID: <aAkoWCtCS7Lxx3Gx@ryzen>
References: <20250423153214.16405-1-18255117159@163.com>
 <20250423153214.16405-3-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423153214.16405-3-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_105023_491925_401505C6 
X-CRM114-Status: UNSURE (   7.56  )
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

On Wed, Apr 23, 2025 at 11:32:13PM +0800, Hans Zhang wrote:
> Register definitions were scattered with ambiguous names (e.g.,
> PCIE_RDLH_LINK_UP_CHGED in PCIE_CLIENT_INTR_STATUS_MISC) and lacked
> hierarchical grouping. Magic values for bit operations reduced code
> clarity.
> 
> Group registers and their associated bitfields logically. This improves
> maintainability and aligns the code with hardware documentation.
> 
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
