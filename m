Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0874BC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 16:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtJnnk6FqjKBvSOCBJGSrbCkQCMdF0w4dQVmXWpSyNo=; b=xbtX0ZYL1104Dz
	fy8gb4UWza73ebKwYHuf3HN7SWbo38FM/p15Q7R9sN2Lfwkx8rzun9pEzUIYkd3yEg1hWQq27f2f7
	ytqCNI4kgpYaumE4BVe0yw7x7ZeltaKO74OvmdOsXgTbq79nuoBj6w22JDA4BOPzXEsF45CkyBj8P
	vVqQ3GO8WGRoMeZyXCc0tEL5jUBd0HBL9T2CnPhjTjxlv54v2MumXEtxIdDoX4mQvYB6QOYij8CKS
	yvuCg8UN/VHP53a6eCQ++GHMFkL3aJTq/DDoYt9ltTLaP/Z5lKlS+EjjL50CJGWALyYB3lYNUMBdF
	kyngDENhT5e0xiAhFtUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWXm-00000005kbu-0waj;
	Sat, 15 Jun 2024 16:46:22 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050:0:465::202])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWXi-00000005kb3-1P9q;
	Sat, 15 Jun 2024 16:46:20 +0000
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4W1hqP2LM9z9sbt;
	Sat, 15 Jun 2024 18:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1718469969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HNGZN4oEpKT+sBOXNLogARwwcW1owg1uGbSyFj4/14A=;
	b=FJIKtU6sHScvKyvoHM8eWZqmD1W51co08238jGAPT4/Adfh1P1Nqqu1U7A70GJzkBvayYq
	Fgu+eLd3RxGd1SWd9a36NHPk3o5nAo5KHARQg7QVm0s0PD3N+KAk1wgPadjkAMSpK00Pna
	uVr5PgbHMEYTrXBYJGEoDUJpz4KKVB2Fj1NuC15WJhFEC1oEjxYjze1SQZjz528AG8ynzw
	kh/LmU/sKAs3T/PaO2pV094YDElwm55Jl7Ft+4+3ikxs67amVVVkUvxnurqN6kDYREpUEs
	NgfGaYW05mRppFx5DaFaarzcHx//7FIZHcZ0sht7JCYtnNR0s/mf4xLEsl0dCA==
Message-ID: <ecc86cc9-f5b6-4fb5-88c0-27a1cef59f5c@timsurber.de>
Date: Sat, 15 Jun 2024 18:46:06 +0200
MIME-Version: 1.0
To: seb-dev@mail.de
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 jonas@kwiboo.se, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 me@the-space.agency, me@timsurber.de, robh@kernel.org,
 sebastian.reichel@collabora.com
References: <1c702815-3f55-4f62-a743-2463f3141650@mail.de>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
Content-Language: en-US
From: Tim Surber <me@timsurber.de>
In-Reply-To: <1c702815-3f55-4f62-a743-2463f3141650@mail.de>
X-Rspamd-Queue-Id: 4W1hqP2LM9z9sbt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_094618_842875_3A35D960 
X-CRM114-Status: UNSURE (   5.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

using the vendor kernel I had success with "sudo ir-keytable -t -p all".
You have to have all the required protocols under CONFIG_RC_DECODERS 
enabled (the easiest is to enable them all for testing).

Using the above command I can see output when using a normal Sony TV 
remote. I have not tested using the mainline kernel.

Best regards,

Tim


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
