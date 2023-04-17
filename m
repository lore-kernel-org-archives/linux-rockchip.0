Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 887BFC77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4ZB6PkMeqvwYeIQpvbDz5GmSRJIkXQxPLimnnT3BNI=; b=4Itlzy7KDO7k0a
	UFQq5E+1IstUE8fTWqZ3YRIi2fspi45k57o1ttbtiZT84+bN0Xwk4qZngV7QtrP/bVlLfM7jcN8zv
	RbxrqqffN9djkegOz5kw/8ORQyYboKKk8kuO07swJSUllEznRHkFhg2U8tPN13IrWu8CceiXhZ9Mt
	nehuXv0ZdcL2O/nMhAFh7MGzTTvMTo6Rb8dBhgjSxXahpXSB/6vcrEbVlF1TsLEPy+F7lPqnxrQOx
	TOITP8PDvPkHSmGEpkmjfqtWqnNK3pQww8XXJpKXk8p2VyRrf7onNUaAm3c1EfgDdAFvO8QQ+eCeJ
	uye74Y4Vp1gVXPWM6vCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYk5-000SAF-2x;
	Mon, 17 Apr 2023 23:58:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYjz-000S8S-1F;
	Mon, 17 Apr 2023 23:58:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA0AA62AB4;
	Mon, 17 Apr 2023 23:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4762CC433D2;
	Mon, 17 Apr 2023 23:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681775914;
	bh=PGFpD0GYJaRNOFKJZnEXcZ1DrsfKc5ed2PJqcpwgF0Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nkKVN+uXGoAHBDbhVk0vwkXzGy4vq0aSTi6Rkyf1FmaXdT9VhjSTRBU9COpHZKL9A
	 mViTITPqYY3by3YMdcI00WF0wjkw46as3/ebDlcJZrMy2a+eaK6XcxyPkOK6r2mYMu
	 7djRfu37gZM2mFS+J5BzMDgzuJrlScxbD2sP1FsxSdwGjpl/VaII5aSe08oPHbFc78
	 sO0Nncgm8+UkIzPxttrPigHu3W6nLd/DvynDiSoTcaiQWlMGqy/AxuohT+g4ARMjLT
	 nHlvgde9DeCLRb6dPm7fzUBG20fnZRrqtUgNd3QjM4PJCZO9J58o2mjVzHexY8nd6A
	 d/a6tCUHC0J6A==
Message-ID: <d4e5d8c8-52ef-3a6c-64a9-ea6c499cb5f0@kernel.org>
Date: Tue, 18 Apr 2023 08:58:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 01/11] PCI: rockchip: Remove writes to unused registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 Caleb Connolly <kc@postmarketos.org>, Corentin Labbe <clabbe@baylibre.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Judy Hsiao <judyhsiao@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <20230417092631.347976-2-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-2-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_165835_459718_8CC099FE 
X-CRM114-Status: UNSURE (   8.75  )
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

On 4/17/23 18:26, Rick Wertenbroek wrote:
> Remove write accesses to registers that are marked "unused" (and
> therefore read-only) in the technical reference manual (TRM)
> (see RK3399 TRM 17.6.8.1)
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Tested-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
