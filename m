Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37EE8C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 12:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Kl6saDdT/MV+XkbMfcqipv8PF5eQHmAFu9MDhu8S4M=; b=Ju57up6v4oGNnJ
	04QSI/mYmkG+k2p6GINo/Qw2z6q3WOdxYchFSKHtriyHfHfbsmAneGJYF1o9x/4E7COU599nMSdvh
	BoapvjYLUpRE3O1+j5DlYbe/y1KwtCSE4zJXrCocDXAA//AuRWplQBprfv76hLSLF/mK2Hg4hWZoR
	Iu10giZI6lz9KYOI0ipPLhE6YU1pDUtLJBH8dy5aWT+AVUDhDafSR2uP9RDVPnSFCDttVz7nH8Msy
	LCQ4ikjcr6fKQT2kdd8e3ZACPRt5Ggk4kB4ysgWhfT1UR9qMQ1aJcsOT9bu+EXwK2e6VCY0RFHKG8
	iho1oUgYGDjdCmsuEP+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzZS-0000000C2b5-3jgK;
	Sat, 22 Jun 2024 12:10:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzZP-0000000C2Zy-2LMw
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Jun 2024 12:10:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8A6BFCE0916;
	Sat, 22 Jun 2024 12:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42790C3277B;
	Sat, 22 Jun 2024 12:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719058209;
	bh=9pGtoUuCwodrZfU6N9Ddfo5lBiKVtSDI4XnqlMUinMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e6rJu8eT0se2RZjFQzKU40BXpOZAhCvngfS9n7eBMLmxEaO1D/gEhYSqgnDUci5/4
	 Lp3WMYSriBWYJfNIAyZx5Z0AX2JvX7N+TsrVZASKSgJK8C3ughjpFdGphI1gC2QuHH
	 5lo4KLkMjH+vmL5fVAmodFKNlJIKyH89J5YzA7ZjxlI06eFq+0qoKXVv7L87p10SpP
	 4UwtKTu7sFnMXXUk7TApHhFln0lWtT3bOw7vYGTyIYvOR6KXL1amppLz+XnBintu3J
	 B9HBbjf1QhMeO/9pRqh0+ty5vr2nOYMn3d4o82PhaFnmb61PwEhYcSwGxVOJTL8xaM
	 +oh+rPOXe1KEg==
Date: Sat, 22 Jun 2024 14:10:03 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 00/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <Zna_G-z8GRZ9OyDG@ryzen.lan>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
 <Zm_tGknJe5Ttj9mC@ryzen.lan>
 <20240621193937.GB3008482@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240621193937.GB3008482@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_051015_800971_048CD252 
X-CRM114-Status: UNSURE (   6.26  )
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

Krzysztof,
thank you very much for applying!

Heiko,
now when the DT-binding and driver has been queued for 6.11,
is there any chance of getting patches 12/13 and 13/13 applied
to the linux-rockchip tree?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
