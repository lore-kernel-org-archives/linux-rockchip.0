Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5ACEC77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpsLC72vP7jLV5RmuLjkWLjw0F5SOxaQYNIDK9hbAHI=; b=U8uXsvws3pXCX4
	xAOplQpCLRUHq+1Yb9T1vO0gUA0MupBTd1Ehrrlr6b65O46FzxWZ5p9q9aFBft6sM/qQFYJ8MXPbF
	28xjSLsQZHl5Doj4+BO64rXXWMl6ObKhpjMQHGwy4jkNlP7z4NG1c3gWPjYFgnTjv4G8lrDHCHIyn
	OlehDb1kC91axql0cYn5agLNKRdNQeqLTcY6jBXBVUiPRrZE0CRvRokBHN4HM8VCP/Ch2LfJuQRUd
	8kAD38deKJzhVzoZ1b8UIpGAovc/7yliJV1r22xcWj/uLQb4m/rIDwsNSTkSmscVa6FopsGuYwY7N
	A9YfxX7ThaDF2nOMSAsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYir-000Rsm-0w;
	Mon, 17 Apr 2023 23:57:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYin-000Rqr-2N;
	Mon, 17 Apr 2023 23:57:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1399962B44;
	Mon, 17 Apr 2023 23:57:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 318F7C433EF;
	Mon, 17 Apr 2023 23:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681775840;
	bh=NJ5MLc6gExgLeTTf1BrxqXwj/C1Yj41T1tB8huzBxNg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hkJHR1ZpviOf6eMB4v//Ana+/U0/txjoG4tp64NA3EqQktvWaRELZV+sivKoB4UHT
	 nqn3m8IsJD4bv2pYXXn96r85vmVWRLx2aYuGCYrLhoZTfMtl+LfIFfYgx+HDcnDFcg
	 K7dFlXM7K9Tx+bKWgUe2/qbe2KW2wNoAad1HcXKOwbYqtFNRauV7SQoM72WCthf0y0
	 uRPFI0FHzjylMfz2RU9HACGWt8yp9SYaS9QdO9cgXNZbWhU31wigA1q22uDqK0KGBs
	 G5m/6PccGg7MMdDWP3YXyUUXARLuaT2nN7G2wjHGhdEjZGj5wJiftAA+X8DdiKXJAu
	 yVZHI1BoUaGFg==
Message-ID: <f111bba2-9dbe-a912-7ced-de141d365964@kernel.org>
Date: Tue, 18 Apr 2023 08:57:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 07/11] PCI: rockchip: Fix legacy IRQ generation for
 RK3399 PCIe endpoint core
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, stable@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Corentin Labbe <clabbe@baylibre.com>,
 Caleb Connolly <kc@postmarketos.org>, Johan Jonker <jbx6244@gmail.com>,
 Brian Norris <briannorris@chromium.org>, Judy Hsiao
 <judyhsiao@chromium.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <20230417092631.347976-8-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-8-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_165721_818872_A9A21272 
X-CRM114-Status: GOOD (  11.48  )
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
> Fix legacy IRQ generation for RK3399 PCIe endpoint core according to
> the technical reference manual (TRM). Assert and deassert legacy
> interrupt (INTx) through the legacy interrupt control register
> ("PCIE_CLIENT_LEGACY_INT_CTRL") instead of manually generating a PCIe
> message. The generation of the legacy interrupt was tested and validated
> with the PCIe endpoint test driver.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Tested-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
