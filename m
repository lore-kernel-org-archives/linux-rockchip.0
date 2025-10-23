Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F5E5CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 18:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3g8nlrXdgtxYJU4rJqd5XUTzN1GU9/42dVjFrwMkuE=; b=sy+BK7ZDlR3LkL
	K0nEm4GElCz3bnpuQDMqwz2lEbmRzVudkOe0DSQSKxocfB+QCCK8DWZua54rvePmMVQZSnuKQsVai
	eRPvf+8aaNv5Rk/b/95tpTp3i+bx6Ns7y//sCvPwhlD2EtltIC5GgKF1b6sxP+tYBTAbyY9U9lvs2
	D6a2GxfJnT/bYt2jHhHW4qDT7s7BRhgHtq4aChqWEboHSWDwKaNX5Qh0aLcTCAQ7v6y0gNFJ51RU5
	OjA9JGoCcD8YOwfPweXVgDRVZ7DC+dFzySlnpCSw814y0iUz8UmvuuGaO4uR/FaMECQw0eCSfhcI4
	enK2zk6pYrUrN0i4144Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC0Vd-00000007JTF-0teB;
	Thu, 23 Oct 2025 18:58:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC0Vc-00000007JS8-04JT;
	Thu, 23 Oct 2025 18:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=X5+yCSGksFVRNRQf31YBe+wjmkAH6A3Ih7vubn4fPMA=; b=Ny/nVDpbLFedoWo7JAjvlb52lG
	wiQEWaacalVKjQSdQOVfn4+GZ30ohzqIe9u63joocmB1YdaHTm5yPs3FFT4ebPONhW9ajVUaMFrqR
	qA5f6DH8bYLnAunav7iJe93T5w7buwPF1DZ5it/e0kEFmK5VxzXaRL6iBKcMO9FVduPUJfnx0yyz2
	P4TtcMtTzCjBbN2+awS0AGIjV7+27TfBXdn7FlFXaMex1QUL6vH2GwhJ6dzVaEUHT/kI/Vel7lSvP
	vi1VgTqHT4Gw28RS1KXZzdc+u3PY0gseSSWPkVw7yBvb8McAipSlXYqINED6Wf6p8Dp4tQic0ahrF
	RZVHKOuQ==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBzdu-00000001dWH-1se7;
	Thu, 23 Oct 2025 18:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=X5+yCSGksFVRNRQf31YBe+wjmkAH6A3Ih7vubn4fPMA=; b=b2ZJ0HIob3ZMvZA80vttAQ1a7H
	iiBQHcFLOAxvT5TaBjA3jDeqeQoQu4TDQEvEa0JDnfiy8/0xYdn4VZr4TpDk24qMUHybPhD+cnZaI
	0od+bZrDEhBVqx/DANgtBZfHCjpzb9B0tS6MG+f/rzsqvuBTsFiXv0bEE+avkj7sDoKY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vC0VS-00BuhZ-FF; Thu, 23 Oct 2025 20:57:50 +0200
Date: Thu, 23 Oct 2025 20:57:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	jonas@kwiboo.se
Subject: Re: [PATCH v2 5/5] MAINTAINERS: add dwmac-rk glue driver to the main
 Rockchip entry
Message-ID: <35567cda-0f49-4784-b873-97e378fcee16@lunn.ch>
References: <20251023111213.298860-1-heiko@sntech.de>
 <20251023111213.298860-6-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251023111213.298860-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_190230_559548_E2F497FE 
X-CRM114-Status: UNSURE (   8.68  )
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

On Thu, Oct 23, 2025 at 01:12:12PM +0200, Heiko Stuebner wrote:
> The dwmac-rk glue driver is currently not caught by the general maintainer
> entry for Rockchip SoCs, so add it explicitly, similar to the i2c driver.
> 
> The binding document in net/rockchip-dwmac.yaml already gets caught by
> the wildcard match.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
