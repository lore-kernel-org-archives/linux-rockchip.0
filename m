Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39933CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 22:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=PDtptvb3ApWIU9j0hhyBFSbOAgsvgUi/uBnahGM90qg=; b=qP+lIe+ItsT7jR
	f8PsjL7PvSjgzFlO1L6BmpxyX3ZsuxwQvJZAhtscxZQcvnSEIu8+Hj6vysLK7JNxegh4zhJopxvuY
	SvDAMzlOSiMN/nCkL0xeRBL25JJ2fnU+6/vzRkdr6htm1kvU+1mZde6zkn3GGoooE8dkSnq+lcy4i
	AaZGa2MXMQTyk85N7iAXA0fqoK+mAgPPI9K4zbDaS87mDuWIm8t0wXTUlEbzgtO/vksKD4+98uovt
	6IWT9S6KEWwnrtpWpAeiwk5vdTn3XU+jfSd8Udpfz+SLLmG17ReEFlSGFpPkwXXrfUZlXjBKI1oZo
	qe63TmEu2Fr4/u4JE+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEax4-000000053ND-2lhx;
	Thu, 30 Oct 2025 22:17:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEax3-000000053N5-1RYR
	for linux-rockchip@bombadil.infradead.org;
	Thu, 30 Oct 2025 22:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:References;
	bh=96Ivd82zfwg3UZufWZbLJwOBgOg70OLDvj0sWaOuk4M=; b=gFr3F5jy7pdUO6RK31Oi10Tk1M
	NzLbZKd1VOEgOTI+uthwdVq9c87+gH6Fsv8yd6pgUkZ2VMPU/YR/XFM6oJN71oTt/PXvZ3c7vW2aW
	45+7kFONDtmsiwVyxHLmAyToxDmleTd0EgfRnsJe6bfmoE1Q4ISGHUY6q9qJrtDufzezUgcYrQYXJ
	bZM7Tt7KWZ4VF6NVdJ4+Z9s31v4Ti2vPwJg4zFq/Alxn6shLpU7luAmpsu9qka1SYTfgponTG9q88
	RpciV7yzm32oQNbMNXyOJe3b8ZruVetIrNeUEEojN67JQP8dJ69GuRSIb2MOTe5wocP+5o5IRpZ6d
	o+tvAnbw==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEa5G-0000000A73q-1mbK
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 21:21:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5069441802;
	Thu, 30 Oct 2025 22:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FE7DC4CEF1;
	Thu, 30 Oct 2025 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761862613;
	bh=glCVcGLFQBSKyyJFybiUkySADmiDy0gRrrAwvlbTnMg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=okzWpxognmzGxUeKMCV3D5M+5y0UPIAQr4u1VIetxBnKOm+Kuid3m0INohpKiTiX8
	 RwFFDBiYcClrZUQW+8XSMloGKRVbA1V7vzYPE8Oq0J3AECkw1OuxSuR8VMKR1re1Go
	 uJ6gMAwewgum5uMgftfDhImoREG0stcfJEb3Wck50LxidzXcAZ6GVvZTFa/hA8o0/k
	 1ZyGcopQ+BOb4zoPDoOyOJ5aq9Lr1bxHBshOnDdJhcjuhduJ8g+IYQ1M5wBcKzUlOl
	 1kw8iz6EX2fh2/tBqsT6vhCarfKF6Z4d4sUiZNrF0a3/8dinTuLAqZvvm+RlMWVHjT
	 PH9skftx3wcDg==
Date: Thu, 30 Oct 2025 17:16:51 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <20251030221651.GA1656577@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251030221404.GA1656495@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_212127_379697_5819D36C 
X-CRM114-Status: UNSURE (   7.83  )
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

On Thu, Oct 30, 2025 at 05:14:05PM -0500, Bjorn Helgaas wrote:
> On Tue, Oct 14, 2025 at 01:49:05PM -0500, Bjorn Helgaas wrote:

> > #regzbot introduced: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> > #regzbot dup-of: https://github.com/chzigotzky/kernels/issues/17
> 
> #regzbot report: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com

Sorry for the noise; I'm trying to figure out how to use regzbot and
making lots of mistakes.

#regzbot fix: df5192d9bb0e

df5192d9bb0e ("PCI/ASPM: Enable only L0s and L1 for devicetree platforms")

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
