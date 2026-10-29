Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D515F606A546
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 09:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NVLh+zyD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XVlmbW8U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nrEaanES/OQOlIcd5y3p5j8GoZE1n5oJ+OkMHV3JYbQ=; b=NVLh+zyDuTZOB/4/epqDn+XYMW
	O4fWPcUTTftQy2++D3zrAzPcDSE5C1ZNUXq88H9LjF0LSopUxQoQ5b6xpf0oTUAskioSdcD1B+wN0
	t4mDY9f4lhiM1jWxIvgOuiIsxSs57IaHmjsSZEduWLgMX+mdjHqJUEWL/FyCDkEjzFqrJn0feisZC
	aINoT32b8e8eAanttC2NXqG0HRxepxRe8aj+XMa+sHoHhH6FftKIfOAcw6K1MQiZ6MhtBnUtm6Pzf
	QIZIafIn3z3EkrfWnYXclgohrPPPI0pBp8wq69j3Yc/Dv53Fo/P+70xHJH1TupSoDK6PQGWZeZ7rC
	b36gmybQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMs6-00000008uR1-2ucu;
	Thu, 29 Oct 2026 09:56:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMMs5-00000008uQZ-18XF
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 09:56:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BACF24450B;
	Thu, 29 Oct 2026 09:56:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03EA11F031E3;
	Thu, 29 Oct 2026 09:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793267792;
	bh=Z9zRtXHe/J1k/4/9wAeq1n+PwAt+ioXmV3zyjSNrjDw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=XVlmbW8UihNpNvT/6rh5IRV/88agVTAnNdYmKJH9XSzSvfJj2hY7/cX++uJJmpR7i
	 lescv/ASmjxHLEh8zAo5AwIKdqvimEveMHZrlA/3BbbJrMwOIb0hWZ08MXyJk98Ddb
	 QyWlUAlO6ARwKp+RtIG8rLlgtIlL/wMz8FgjqUBNGwbq0jnKG4LershNDJsKjmqm/D
	 1ybyonl4x3aUcw4zm1zLzcIF0pMlkaVp2niOaL4aHGYIFgwTUpuLXDSki1wMZXcLVe
	 Fu71xI1zm6I79oYpVYiIMmxmVFffUQ3fWVm95CMTpUfw9rPhsX2v8/Q4+fQIPO8gHh
	 FD+COQWphX3Kw==
From: netdev-bot+sinfo@kernel.org
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
Date: Thu, 29 Oct 2026 09:56:31 +0000
Message-ID: <179326779144.3327.11596356628770174944@kernel.org>
In-Reply-To: <20261029094916.3127193-2-coiaprant@gmail.com>
References: <20261029094916.3127193-2-coiaprant@gmail.com>
Auto-Submitted: auto-generated
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi!

This is an automated message. This series looks like a fix, but its
commit messages seem to be missing some information:

 - How the issue was discovered, e.g. hit in production, hit during
   development, syzbot report, manual code inspection, LLM or static
   analysis tool scan.

 - Whether the issue was actually triggered, or is only theoretical
   (e.g. found by code inspection). If it was triggered please include
   the symptoms, like the stack trace or error messages.

Please do not repost the series just to address the above. Instead,
reply to this email with the missing information, so that reviewers
can take it into account. If the series needs another revision for
other reasons, please include the information in the commit messages
then.

The evaluation is done by an LLM so it may be wrong, if you think
that is the case please reply and explain.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
