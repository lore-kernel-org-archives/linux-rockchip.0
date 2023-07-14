Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3EEEB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 14:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBys/IpzHxi4o0Gi1/MB2PLtwIDUpQVr13omHaCvP/s=; b=mVJAkARsQr3RTW
	nhmVDb1L4Fnz0lxaq8pUf1BWIYFmRt+2zF1MGzRo3KtU2g3HFqbLtEUE9JP/Lk8WYdt26nKaRHBPK
	LK0Op+Y+XHPVMsfD1F7yayzuo7gQPZGIXn3uPMVAfOnoF6zMBGbQFZbSrjP+dIihOVdxcPRQGykBl
	BYINU75pQJfO11UTOu/35FfKiPaDTRaWIcnhx7u9ODichuhCicJs87VRCQNC/LmJDXES71UWQ2PQk
	SZNXraOJczWaHfCXjhS+K5zPw2hebzpXVEK/gWU+384CWKf0JmFy89ShYgPQfYZMbH8Mae34eBGD4
	sJhrisC2aEQ4jjaqtOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJNR-006LJE-2y;
	Fri, 14 Jul 2023 14:02:33 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJNP-006LHi-0Z
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 14:02:32 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-bff89873d34so1732541276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jul 2023 07:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689343348; x=1691935348;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UE2pP3kr6N661bURVuxZqsXqodClTm8wp0msbgmiIH4=;
        b=MXEeWfqY2mgAgr5E9wbHzY4ZYoUoDnUnhnH4sh3G0mbF5ftopFspvE0b0UDi/Ug00R
         bdzDD0NyPXjiv2DGQDScCJQjNWryU+un5bh5PRJtmFqlaHXEW2gT7cLW8JMqe4lbWR/6
         rvPCprvTemiHzugEoTDCEYpBx+neVJ2NGR7cwzULmmwuLKQEpMsuW3KwtoPxa8V6EEIJ
         LV+3UTfp3xaO9qaX/7Oizkx27gThCe6Uv+EX/h1qsAAMkE6bPKQvnLScK2XPXqSKay91
         jKdsQXWuPuP7NWN2cScAslRKio3KZP7YyR/II1Jl/SiIYnxXp6gT552refvlEYL9HgMI
         L7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689343348; x=1691935348;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UE2pP3kr6N661bURVuxZqsXqodClTm8wp0msbgmiIH4=;
        b=eOAlAhUR2EuCyf3R82N5YClSmlpGzNQ6YCSe6LEsLGWyYNYvXnwHJUdEtt42OFZRj9
         nlJzWrV9wwwVuTcZKT5ynXiVDRhKV0Y3g8wDaCR9tKm4LqH/Lcxz7Jgx2IAww1nQMRxw
         1nrEEH05c/fW/bjH/YGb8Mit/cJHFmifq+wKeFNChCGhybKu3dj8zrxJTKFONhzSR0hg
         DAFMsYM0llIf6zrTBvYAv5kilCzE/0JUXMHQJ7XW3tPSVzzGQVBrmgbtVntgqYKtwkIZ
         SrZEF1xWJtxqQZrI5GZ7RhS7gY0zQ3kWE1Jes4U/1YuaPZX5ZrHwEdCoRpa2MhsGq+tW
         LORA==
X-Gm-Message-State: ABy/qLYBa9Yl1B6AUIecse99nvW8mKxIATMGnyxMxgOyivhZpeG7NbR4
	06ivGezV3k6QrQPGPKkyJWXUoBN1nTuiNcLui8WB1Q==
X-Google-Smtp-Source: APBJJlHS/oqNNmU6mDCZBTm1FqpDFiEIjuyfTLPHbX8EIeNAEAfjvZr6HPwCNvC67uJvxzFt9wasxruRv+DK3J/Qu3c=
X-Received: by 2002:a25:e7c3:0:b0:c12:fb0e:52a0 with SMTP id
 e186-20020a25e7c3000000b00c12fb0e52a0mr4112693ybh.19.1689343348754; Fri, 14
 Jul 2023 07:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230713171851.73052-1-sebastian.reichel@collabora.com> <20230713171851.73052-4-sebastian.reichel@collabora.com>
In-Reply-To: <20230713171851.73052-4-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 14 Jul 2023 19:32:17 +0530
Message-ID: <CA+VMnFzh1-rnDoY_hS-iqjDrOYwDAQXBBg9KUHAVBvaoUH=ZoQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: rk3588: add PCIe2 support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Serge Semin <fancer.lancer@gmail.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_070231_406539_2C70BBBC 
X-CRM114-Status: UNSURE (   7.84  )
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

On Thu, 13 Jul 2023 at 22:49, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add all three PCIe2 IP blocks to the RK3588 DT. Note, that RK3588
> also has two PCIe3 IP blocks, that will be handled separately.
>
> Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Tested all pcie2x1l0 and pcie2x1l1 IP blocks in edgeble-neu6a, 6b.

Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-neu6a, 6b
Reviewed-by: Jagan Teki <jagan@edgeble.ai>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
