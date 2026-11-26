Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06148606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 10:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NyJtuNiR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=KuvFcVJM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8/jpowYN+dAcIGiDUkhlLQVO/z+eok8UoLP5d60s3NM=; b=NyJtuNiRC0u7qZ1ZMBBAqvxrmA
	Kb2FijgravHqVoW8zlU35L8Y/L3+Sg87QzPnzWmtDv5G91VjAerh+zBxr77lBBT8in17HZwdZO9MF
	9C9iIlX+aO0fVCPdqnEyA2hukOVU52rdgdp+o0b4FZfTysKHd9zCcdGJncJl5TiUuW3CZntq05JSq
	G2mtXIa3yQBewnnlzhLy7SIrWczpLj/ntsSJC/QltMG0QTHAJ0MrdzOT4EeUyqyVDCBN7LYbvQzI6
	iAZvVAB8bh+sBx27BrwlkNi1Yx+GVCnlsyxzix3TIrVoUw3LaFRrU0ufFC27smByu3Ey4OHjUpJ+X
	/eajsGVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWXCM-0000000CnAF-0QgH;
	Thu, 26 Nov 2026 10:59:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWXCJ-0000000Cn9e-1lT5;
	Thu, 26 Nov 2026 10:59:28 +0000
Received: from localhost (unknown [IPv6:2a0a:edc0:0:701:2795:3815:4919:32a1])
	(Authenticated sender: fdi@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6C75D20101E;
	Thu, 26 Nov 2026 11:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795690763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nl+JupRMQLLP+uOTpPc+emGSWiD9NUoCDaj28QKFU2Q=;
	b=KuvFcVJMmUYUDym6pqWt50pYTvJ39RATnvJtweXL46mNPg8kP4dW69Rfni/012anIoBFn9
	gnjwFV4sSABf82DAQb5u7fJFnXhW/MqGWmCEdEgJJ9V4SyJChJ+4uiVW77kJ5Rpq07N78K
	bOUGAA9fz3sJHeojb3BWmMzhPyJ2y2leF8tWiMQJl3ernAeFeYToabA1fUjGtfsPL4JKpu
	MmU2mO4aN9nXihUR1S9oP4eWHsfLuhEZzIRFvClo/dtxlUTMysZdB2D1GRoEOUjFxAOAOO
	1OXQkynipH9yb/DM1U1uNfAsZk0A0osymiies0UJaErNv4Ah+Ai/f68v+aaJCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795690763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nl+JupRMQLLP+uOTpPc+emGSWiD9NUoCDaj28QKFU2Q=;
	b=EqNQVc9AytuC45ZYjhIu1Pdo9lCH9xno5xe/cSBOgKiJzbxCkac6kWgPcapMBaljWDYIYU
	1/0cSIevKWt3NH7S7HFnvB8SUgo9eyoRT7QFyxah8ui2qXNgWmge9B/5y3W65llQKHXaxy
	X3aUwYUeeWbEPWIv4DVYdm7OUEfDlKKXaygcXU2OhShr0iO3yRTlolnxFSaZ54tJ7axpaI
	hpRX1AR5Yf/rF5Pag3QABi153sULYP0ghRg/T2BA3+/vfbN/ppuury+FYrHUtWlsYP18gF
	4GLK1ERm/ArlGB3TtUNwPeBzY3qvbKh/1H817ElHdqJTysAEQHPDq5MS6SrDJw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=fdi@pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795690763; a=rsa-sha256;
	cv=none;
	b=ZBquwfFLPs7ziIK2uHGAkB0wP2rxBh69jwngCHyY7x1PbpjqmASxszJTlGqHVWCmOrvZ1m
	wh60j5sZLmkZ4U3dLIPNQBKhY31z01X7il6tTkryCq+tJjm91ZJrFlF1sEQ9Hg4RXEs/jH
	sALFMNE42uzxy4sV1rtxq4j+QkQ2YlVTHO+tvKwSKwRolDEvn2k6i4Lbu5Sh1SCxMYfa05
	7olkYIH3dGPDV5EBedfeFGDNkcxCXIanQAqxskM4V+T5KbkPb76FfrsqvoqDT9+NXKl6J2
	/f1vl/cGQ+61PWyWHcpcf1H44Ko1vmr5UFkXmQ2gMrS8rhTY4XXhPj95jXTcFw==
From: Freimut Diener <f.diener@pengutronix.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Chaoyi Chen
 <chaoyi.chen@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Midgy Balon <midgy971@gmail.com>, Diederik de Haas
 <diederik@cknow-tech.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: rockchip: Allow
 post-init-providers for domains
In-Reply-To: <aweeQ2McnEE6yXvY@venus>
References: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
 <20261125-rock5t-regulator-deps-v1-1-6a3470ad1855@pengutronix.de>
 <oJj2NKd1Svmsn320H8YWrg@sntech.de>
 <962182b2-6fa0-4aaa-a47a-f78339b5d89e@rock-chips.com>
 <aweeQ2McnEE6yXvY@venus>
Date: Thu, 26 Nov 2026 11:59:23 +0100
Message-ID: <8733snj1tg.fsf@theta.mail-host-address-is-not-set>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_025927_606824_D05B15DF 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

Sebastian Reichel <sebastian.reichel@collabora.com> writes:

> [...] an alternative solution is moving [affected power domains] to a
> separete device.
> [...]
> Now the kernel has dependency informations, which are also used for
> suspend/resume. So the kernel knows it should resume the power
> domains required for SPI/I2C (bus used by regulator) first, then the
> regulator driver and then the power domains needing regulators.

Since the power domains are managed by a single hardware power
controller, would you envision splitting them into separate devices
internally in the Rockchip power-domain driver while retaining the
existing DT representation, or would this also require changing the DT
bindings?

Best,
Freimut

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
