Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFFB4CFD317
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 09:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDxR8gSmjDLLtSc3m8EtL0PLX6s4Mikp6zg0A+yJvuQ=; b=u05QDY0OhOzmsX
	60uyznssj/AD1k/WtXNT2yVtMgQb4M93w0WlinOYNu96C75Yf88K0mJGpTixWPF7KIM/Ey+nQDBVH
	neipXiY+cD0MoTRwGwkVQQK0XW+kLHg4OvseM9bo/9xAYV3Ijf4N5VLIfNaSJqCLQ54iqj3ngtcp/
	1+xmoTPYbWZp8bYhUCe7PNnWTpKzarvAcWYxC6s7hX0RX5McGnn8NmvgHXD4arTQwqArYLbqms7Qd
	zuipk+YjnTbdY3wW7G5/s2AW+LVbzgOpfIAyoVmvlG4tz8L8mArePN1ZwlVwj2+Ji/ejugp73sBfB
	AUchjm5Qvx5gA5zp52jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTCl-0000000BNQV-1me2;
	Mon, 24 Nov 2025 09:49:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTCi-0000000BNPW-2FWo;
	Mon, 24 Nov 2025 09:49:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 86F6443332;
	Mon, 24 Nov 2025 09:49:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 165A9C4CEF1;
	Mon, 24 Nov 2025 09:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763977791;
	bh=e0Rfgj366tJxe1xsMBXGVrkz7jJATsofvCJET5b+Jts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CZQpsh8tusQGHYy87IQbB12/uZyISK2efxLt05bMvy6mIeMUIC1mBpVhhUFerRFB+
	 018dT15yOy/onqeQ6NsERRsh0KnxXLUt/WDGf2qYEchZoF4d36nj6pi6BzcexdSgHK
	 9Nj7vcHtBl7HieT4EBiuSEwooNsa6Xul+5g4gV+ZMshkEFu+BDKuaFLeJtH8clu+/O
	 rtTTxpI+llZ3UZXD225zpleXnnVBGSqr13zMhFImf6b9YqKPkHgpxYuPcljEx3gXnB
	 GLU1VtHBmF2V+ICTZWr/Qohw1/HQpts2pGKioMa6eKGGuvjUnBRE9DjwWJgBK8AIo7
	 EvWRO7s/T7T1Q==
Date: Mon, 24 Nov 2025 10:49:44 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	helgaas@kernel.org, heiko@sntech.de, mani@kernel.org,
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/2] PCI: Configure Root Port MPS during host probing
Message-ID: <aSQqOHH2VLNNpX3D@ryzen>
References: <20251104165125.174168-1-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251104165125.174168-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_014952_599949_DF9E87E6 
X-CRM114-Status: UNSURE (   7.66  )
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

On Wed, Nov 05, 2025 at 12:51:23AM +0800, Hans Zhang wrote:
> Current PCIe initialization exhibits a key optimization gap: Root Ports
> may operate with non-optimal Maximum Payload Size (MPS) settings. While
> downstream device configuration is handled during bus enumeration, Root
> Port MPS values inherited from firmware or hardware defaults often fail
> to utilize the full capabilities supported by controller hardware. This
> results in suboptimal data transfer efficiency throughout the PCIe
> hierarchy.

Hello PCI maintainers,

Merge window is opening soon,
what is the status of this series?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
