Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F197C3DA42
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 14:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=myPtA9DZ/ls+xPAzgoxqfek9dvnNuekZx+MwVoLWLbY=; b=nHPsxtOrX8WrO/Un6wgpQooEMu
	SdQX3rVRhx4hwhoOOwfL44QlMOnu/37HNXPhxO0rEXQwBy/Rhuw4dfam8o8OXHTRt7rmNX5ccz0oj
	2DuZNhI7xVXYk+OgTgukttyvwpm6WeEHe80RfmU3TX+/LhZqp/to99gtqcXhAYELqc2eqOFFBkUpQ
	RuNrajS1cqZixwa4C/YrGVMNmpPrpZ70npcAw1P0wlgZFhnp9lD60HXSDx5rUl14yBd5GIQsep8gw
	JgYdwMFSzeXcDXicY1xxhJtG50+wn9c33RIIQwhWGW4weZTScY2qnc4IX7g3ZCRR0uXgoNJPUwaRE
	dbvEB4ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSeDM-00000002jbV-21iv;
	Sat, 13 Jul 2024 14:59:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSeD2-00000002jWv-3wJM;
	Sat, 13 Jul 2024 14:58:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720882725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G6LUtO9TwGFe+2ljcswYV7qxJzuvjypqub8o20MTOYw=;
	b=Zc3fc11Y8a+YnyF186vXBF7XCWCGlJxWlKlGXUvZ9T9YWW72ioC9R3+NmSqX1Fq1BdPxl8
	BK5icxTbqgTEGqeaisDoNO7nm+hDYJJ7bf9pLhCZvElnRjFjn/DT9RvJUxQfrVLtQbaStQ
	vXAfWzxy+jd/rZW97SKug10FHDClfS1i4cuaGKUgxPi2njzp+QC1cC0ikZfQRcGG0+hUWL
	ElNKsuUzkYSx2WNQ7FzBUrirM7kz3W67RHGCzJlgUKRLb2Z6ojJRlneBgpS8Nv5zb1uRrr
	NAoa9HV5JF3McpQt55/JvzPhc2Joy46750TzSR136hLxeTaeyyGg5yCamiVndw==
Date: Sat, 13 Jul 2024 16:58:45 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Diederik de Haas <didi.debian@cknow.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai
 <wens@csie.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
In-Reply-To: <969642dd-fe5f-4dfd-baac-21e75e30a271@gmail.com>
References: <20240710132830.14710-1-didi.debian@cknow.org>
 <20240710132830.14710-3-didi.debian@cknow.org>
 <72718d8d02c25993c138567c96340792@manjaro.org> <2735059.JVtD0IzA6d@bagend>
 <969642dd-fe5f-4dfd-baac-21e75e30a271@gmail.com>
Message-ID: <529bd79969ced12bbb5a3b1c3d5ba53c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_075849_408569_612A5197 
X-CRM114-Status: UNSURE (   5.88  )
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

Hello Alex,

On 2024-07-13 16:56, Alex Bee wrote:
> Am 13.07.24 um 16:35 schrieb Diederik de Haas:
>> Hi Dragan,
>> 
>> Thanks for the reviews!
>> 
>> On Saturday, 13 July 2024 15:45:12 CEST Dragan Simic wrote:
>>> Looking good to me, cross-referencing the RK3328 TRM and the
>>> downstream RK3328 SoC dtsi checks out.  Though, it will remain inert
>>> in our codebase, because no supported boards use it, but that's fine,
>>> we're still improving the correctness of the RK3328 SoC dtsi.
>> Indeed. But it's hard to argue with technically correct ;-)
> 
> FWIW: (upstream supported) ROC-RK3328-PC has sdio wifi connected to 
> this
> controller.

Oh, it does?  Good to hear, so the additions to the RK3328 SoC dtsi
shouldn't remain inert. :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
