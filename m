Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AEB9C54FB3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Jun 2025 20:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6KN/1rSaWuPveWf5g6pXcdbVBjz32ZNlrgUi1ZrcteU=; b=t9Am9cIi5vGl29
	VU61s2Pk/8QrJ8BdX/7EPBPNU1zGLZuZs/GYUpctLTPYPLCNI7L3PayaLVjE7dH9sqQd7YG+ShBHd
	WMh5WT/bpYstT8fVkmiMCJjmSxGc2Z8SvkgVF//EuwMbxuUmu6LyE+fZx4VljIDcYgyZPv+eEzqX3
	REN/F9jirxdPR6BYyZezSnoio8W8WOo+ms4frndKa9JnFySqzVqvHqKrXDPj2KKUafr7+XxCSwSmi
	AboemXkz2BjlYIFZiCUwvP/hLJxCN7Cd4wOjSKwCM5fCD6rFzQioKJHVCPh7oiQE4PW687NCte4mE
	tym9wFO2EL5lniwdffBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpSb-00000005wJ8-49iW;
	Sun, 01 Jun 2025 20:39:13 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpSY-00000005wIh-2xMY
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Jun 2025 20:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1748810342;
	bh=Z1dfAcjZIiIKCmHGRl2Tg4aLoUws9HsjP651fOlNsQI=;
	h=Date:From:To:Subject:From;
	b=iU/m6ZV+kIgExkrFBMqWxFIS/wHsLlP3I42CpyxmK0+BRiDIcDVozg2cabummYwxP
	 U5pZzJZqpf+l8zBbJixHQFrB5oHq47oiiRcLPOULfFSWZbm08YRXuJZuFau5mZ5qNO
	 gNe9LdDvF2a/DO9jkctOil2zQG5qXVOJG13a62DENvZ2AUfWNzAAjBiGO4l7N9Pshk
	 OduJXEL7ShRRsCsAYNfPPsf6q6o5xficwl7n3VRHfa6QHfimciER+4jXCOaMIMtBsw
	 h9IOmqhuj6jn/Tfzq+DcjQvqW5Zk2wwVonxSR9tOeJ2xf6vY8XW487CIGkte8Qvc/f
	 3CzSKhEAJ7lxA==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50b4:ed04:a495:6a34:82e3:bc73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 2B5AA27E484
	for <linux-rockchip@lists.infradead.org>; Sun,  1 Jun 2025 20:39:02 +0000 (UTC)
Date: Sun, 1 Jun 2025 16:39:01 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: linux-rockchip@lists.infradead.org
Subject: Searching for forum for help on dts devel for RK3568 board
Message-ID: <20250601163901.7e3ca4dc.xunil@tahomasoft.com>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_133910_821186_EA4B0450 
X-CRM114-Status: UNSURE (   8.00  )
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

Hi all,

I am working on initial support for an RK3568 board, the LinkStar
H68K-1421v1. I've made some progress, but can't get past turning on one
of the two PCIe3 Host bridges (pcie3x1 pcie@fe270000) without breaking
the boot.

Is this the right location to ask for help? If not, where might be?

Thanks,

Erik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
