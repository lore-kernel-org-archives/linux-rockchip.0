Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE0AE77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJ5sGULFoblXKTFkaGnmCR/jbRqSgGZ2TxtYXXl9cXc=; b=MNYAcbotT7MZtX0PgAVwiEW5O8
	7uWg3Gso74Yz3N6/Wp36KgH7xmssRe0OpaNefPQtSjtOYG12zaBo9uwYmu0YCe5bGDFKGXKosDuro
	LDpYzeUROFQG6cVPMVf1ss9AAPI0oYmf/knZUV98nRjmKNmehonf+lctVg6I9bJPA3bkW53Seijea
	iSqrVmsr0o+g5bO9JJCEDgjyT2W7lNusD8aypkf5AtoqJEFOhzr1TZF0ErII0Z5TYB4tfVhT8RTuC
	ogYP1fqTjMF8c+SugDwAEIk9ZAvOPdSll2+ZZ83s2CJtZv7qhNhzqOS4xl/SBRQk0u9J/LOCykI09
	eJEOVg/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUj7M-00000000cEB-0LnI;
	Mon, 06 Jan 2025 09:09:48 +0000
Received: from mail-m32102.qiye.163.com ([220.197.32.102])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUj7I-00000000cBb-0fNl;
	Mon, 06 Jan 2025 09:09:45 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7d472a1c;
	Mon, 6 Jan 2025 17:09:36 +0800 (GMT+08:00)
Message-ID: <48e5f547-0f7a-406f-990e-6ec3e5df3e8f@rock-chips.com>
Date: Mon, 6 Jan 2025 17:09:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/17] phy: phy-rockchip-samsung-hdptx: Add the '_MASK'
 suffix to all registers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-7-damon.ding@rock-chips.com>
 <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk0ZS1YaHUsfSkxOS0hJTE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943ae0763003a3kunm7d472a1c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PxQ6SAw4CjITEx8wGBxKTEtK
	TA0aCyJVSlVKTEhNSk5PTkxDSkpNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOQkI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=PiuwPbAqxmEFBwTa2T0HrOX4XUXA3zPt+sglkv0JcB16IrLZpVbngO+jbHH4Mya55DrE/dTmA0yKZYELC6l/GAiO5N0hshCpCngbvtwiGZkY6IDqplB148jYLo69e1HURmXFLi3CgjIeYHJVE34Om3fHBpslXUaCrFqRCYWGLWU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=IOtYJ/4fuEb2AjwCiDYcEOfXLlyiZIOg+Et+T8SsFS0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_010944_698614_02E12054 
X-CRM114-Status: UNSURE (   8.25  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2024/12/30 20:34, Dmitry Baryshkov wrote:
> On Thu, Dec 26, 2024 at 02:33:02PM +0800, Damon Ding wrote:
>> Adding the '_MASK' suffix to all registers ensures consistency in the
>> naming convention for register macros throughout the file.
> 
> Nit: usually it would be "Add the '_MASK' suffix [...] in order to
> ensure consistency [...]".
> 

The commit msg will be fixed in next v5 patch series.

>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

Best regards
Damon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
