Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325CDC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRgAYM6OyBnMS/ZFbw0s0eM7ndjMHF0ncQuF1ko+tqw=; b=aG3yELxN2R2f1B
	qhnU6QthsmmAn++zC35zoZ9qFhswK8pq0SZbs+P78byW3a0FGafVw4eYErE5vldh0iZKCirCsOL+I
	YzMeeK6Eek6DNlbWnZnkvZ0ZGY0uhCWdFLazjGfIqYdqRPN8ql41Ho1MTj+fsjKF/0MdlI27R2Qj+
	7VuTRG1b0i7LJtzMo8sKjtS7CzYRJn0XZtpPqgaUIwybmQY3XCTAKbQ9PWHttPjZ43W/PxfaajhRU
	qhr7YZnoZ6kv5/UR3027y3dj/Hfleb0mxyb3jNcKz9oUfvJOjp9km2GJWWG/OkxHkfoebWE3qAGSD
	4y93WlJ7gQeXIk5A+rRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvax-00000008JQq-3iaM;
	Mon, 19 May 2025 08:11:35 +0000
Received: from mail.novaplan.pl ([51.195.118.1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvTI-00000008IL3-3778
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:03:42 +0000
Received: by mail.novaplan.pl (Postfix, from userid 1002)
	id F1916A46C2; Mon, 19 May 2025 10:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novaplan.pl; s=mail;
	t=1747641711; bh=jxb0oDMobd7GaIcoqojTSF8ZoNcoVg4kM8ohJkoHKb8=;
	h=Date:From:To:Subject:From;
	b=K1PsLvn3DicGp+XwxEO9qVdSk0dCzROmFwwaLLXdTRDqAL++TjSVGInXYugOXWERy
	 TAa9JNgB9l+z3xKrSn/iH0CBz6QV4zVhqoZZQN/rnACVjMZ7tuipTAIivfSByRpwEA
	 7X3Yb5hZZ/bYG1MMWmhvdHPfjS/9ZFQQkmkV2YQvdGVyrhuaFiy6+RbLqu5g9SFGrG
	 3JeEr0VtcaJXw7oxAwQW7E2hy0yzX1boJoAJXlkSQGg9yQMVG/5oJzMGvlUbxlKAVr
	 3+SzIaIij2mPJzW8NhxQ5ea56+io4Eu9f8J/IS6L3SXcpd2TL8vapUl5kzmmUgrL0d
	 +KywUFV/aWCow==
Received: by mail.novaplan.pl for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 08:01:10 GMT
Message-ID: <20250519084500-0.1.lm.1y6bq.0.oyqdv8efho@novaplan.pl>
Date: Mon, 19 May 2025 08:01:10 GMT
From: "Adrian Liszka" <adrian.liszka@novaplan.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.novaplan.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_010341_465589_DDE97010 
X-CRM114-Status: UNSURE (   0.54  )
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
ZG8ga29udGFrdHUuCgoKWiBwb3pkcm93aWVuaWFtaQpBZHJpYW4gTGlzemthCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
