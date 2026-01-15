Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A723D4660D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvOICheE1Yejr2nIL7NSLgUNlvWSkUimzoKjoPrqlMU=; b=iew3XKHhvvaXc5
	bJ56qaMVJ1NIxpKBQKxolleKRjiO8mNvLT0+dUs3XnnUKkseg7VDLeh7l3/HZFvAMrh2GZo4E8fWj
	/xGUXtehmhhUcxw5lX6mRt0fWOB0VD1Dkk5r/C8FzGP4tX1s6m/lqbBMNRHjYDHx6xUc1DE3OOdaK
	JCzg33nH0UzMdr7naYOx3jjNVgJfTFl2yQi1WUNDOdoN8cbQ2bS7RE8qT7YrAnnnUolaoCdWqZQLE
	M2XZrv32Nyf9ceZlBdrDiOQ4i1s/+4K6IeKbF1FQMzaRqX45oEsXceERPDj29ykwt3QOWQBMKYABL
	nvzZMQPcZBlhM1PWJCrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSTn-0000000D0Fy-1B9k;
	Thu, 15 Jan 2026 18:54:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgSTh-0000000D0Fa-16Xf
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 18:53:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 80C3943748;
	Thu, 15 Jan 2026 18:53:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E54C16AAE;
	Thu, 15 Jan 2026 18:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503232;
	bh=+yRgRWrxixszXJdLBEgxSxkhwkZTH7s4cXfyBhhd6zY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AUCiggqZpfdI1tudPHsbFKr6s686vUb/DOUAVuO08NxXYlA4lO5ha1c5Ih0Nkd5L0
	 qeyF1GYAs71hBcNBw34SXu9ACVi/671Uy7D1Tpd7CPpislVN6wCq4/EDGvQyu59dk2
	 UGMCjT/ad2mN49ixcwFD4ujyD2H8wYSN1SgBIISG9nPbcNWlemr8BTw9Js22rrINcT
	 iniQqZYV3ffnL+KAyaiTghLs3E/c2fEZOJdUN62/iKv1ms6XPscdbUJEbgpAOPPV4A
	 nGUPKKL4AqeGo8Rv6ZpvASqe1IPRdOT/DD0+aDXx3ZOYiSI0UD2xuNQYhqxzuWFB9n
	 putFSQG6ZAsjw==
Date: Thu, 15 Jan 2026 12:53:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, mripard@kernel.org,
	dri-devel@lists.freedesktop.org, airlied@gmail.com,
	conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org,
	jagan@edgeble.ai, krzk+dt@kernel.org, aweinzerl13@yahoo.com,
	heiko@sntech.de, simona@ffwll.ch, jesszhan0024@gmail.com,
	dmitry.torokhov@gmail.com
Subject: Re: [PATCH 2/6] dt-bindings: display: panel: Add compatible for
 Anbernic RG-DS
Message-ID: <176850323085.1003166.1760055043978437225.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_105354_748485_9886C3CC 
X-CRM114-Status: UNSURE (   9.51  )
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


On Tue, 13 Jan 2026 13:57:17 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG-DS uses two (mostly) identical panels as a top
> and bottom panel which appear to use the same controller as the
> Jadard JD9365DA-H3. The panels differ with a parameter defined
> differently in the init sequence.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
