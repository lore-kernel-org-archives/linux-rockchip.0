Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D41AC71135
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 08:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFvvgq4fV85GiyverGpkn+0dQVKdFBOfEUYU+ez83g0=; b=m9PRjWeKxSZnsQ
	qjtbGOXRARu43aDsgGqMRz4ZEBOgFijt8SMclDnmYiTzwVRo9osmYcmSpZV7pjly4wb8HTv+1tbaw
	rZmP32YCo9T1VRXduXhQvjt14vhU3stTV/fBqOSLWWJGaEMq9vtycc4JM6r1sd9kVWs1DnsUkusVh
	oDo0idJmofYM4+LJS5gN2t7SuEHtSb2JZjeypkmxV1Yj6FCVdi35l9ivjzyojNvPwAC/MKnY4WViw
	uH9RYsTOrt+oaPeB0OBjr0DHLtc+D9wxaaJfjDqIZfzFg9suD1X2qy6YBYo/Ouehh+6ny6PfkM176
	eQ4OqhLWMh0zXSZQGy4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR5PL-00000003pAw-1PhN;
	Mon, 16 Jun 2025 08:41:35 +0000
Received: from mail.fintara.pl ([51.68.214.200])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4rc-00000003k7N-38DT
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Jun 2025 08:06:47 +0000
Received: by mail.fintara.pl (Postfix, from userid 1002)
	id DB5454AC5D; Mon, 16 Jun 2025 10:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fintara.pl; s=mail;
	t=1750061199; bh=0Yjr6NsrKkaYb/LNYm1mPKHuxqkR0iWhkNkzH9QSzrg=;
	h=Date:From:To:Subject:From;
	b=qg5Rt+Vm53SRyZvdCcurvqFy1XfNoJj0FmcWV8qnAz3lRJovz7iZlzEHuW8VeWNKa
	 kgy/2OEVmIH2W7OLHiHoQ1Iput96ohzrQt8TFLkhjzHLvqWarIutxKb7GFUbqRgioW
	 5bwUiCvbWA76YoW0GL8KLA+aoYFdY3O1VxooPk+/DaFPpCY/NNibowRCo/9fUkOuG7
	 bn/145FaU217xpdyFDN9cMf8s24XvzJzqZWfeEhPleTcm5opVDpGm1NiU9XBkZpB5O
	 6CEM5CS9WbSHaJzUVt+8sf/BUkqnn9T1n8Z0IVWjW0wxHs8J4nYv6P47oPr0zRaBO9
	 qaffK/7xrJ6ag==
Received: by mail.fintara.pl for <linux-rockchip@lists.infradead.org>; Mon, 16 Jun 2025 08:05:37 GMT
Message-ID: <20250616084500-0.1.a4.2kt4v.0.0dn82534gk@fintara.pl>
Date: Mon, 16 Jun 2025 08:05:37 GMT
From: "Dominik Lotka" <dominik.lotka@fintara.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.fintara.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_010645_467723_079B82FB 
X-CRM114-Status: UNSURE (   0.14  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpEb21pbmlrIExvdGthCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
