Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D71C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 21:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5afw84fzsSPK4n1crZlF7MfMNqvF+YRhY7CgHrtf4w=; b=mcmW8AcT8LUQW0hnXNsCPUlfOl
	MTrGwYONdnh5kcOFb7IYFYSfy5CbLn+AbrCbq85yUT6foRUr2ElNaNEdnXjx1l8KkGxzDlF3xQgpa
	yjgW/hPuCKitYUUMCd8K9CckOM6CSoRlcJpnqi4OfFLDG9OpnWa3Ytf5XLaNgJYDQE8hlKRFdxrYw
	dbQgvz0p3r+XVj/VTtaZpGNdi6hwhPIz788LjAg/Mq0hQ7LhCAGf+QwxDPXcUhfRUuiIuyboiimG9
	0NSC7Jj0ALYrAmqkjRJSUy5s4okqiK3cpAMScWc5qL4m8Z3yL7IBRcsRSLj9iO1wTIBKMBkCH2Nvh
	S5eT0vMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDAgm-00Crvm-34;
	Tue, 12 Dec 2023 21:53:16 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDAgj-00Crua-1C;
	Tue, 12 Dec 2023 21:53:14 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702417991;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FNtX2wpLhIBBWJjUi5CN7W/hdtdfbJUVEA+EGhqew6A=;
	b=NzY/yOFW7L6Cp4SiNILL60Sh5kMmH1v7p2ZxzZMZ4ldZnA0Kn750TFpgPCjOJmSc+9HPwN
	zNoUEj+mvSKhiKMcV8cgLMntV3ZINA3Gaj7W4bgx6q0Gh/mKnzatogAJoUZQQiQR6YS7PS
	kO/b0wsJ2BK/ZnCX6EZIiWOLObDG/d+mVwli+biDF68WfOYLZ8sr3rJjvor80ltWtPnxEW
	euzweonUH+RGQHb0HAF6oSc0GWjBl0Gcjw60AI94ocb3CqYuwhpeUCuCE2KzolPH6/hejB
	eEfEnAt2Zy1UjhbVDvEr0y8AH0zOJfkIH3uGVicvwDQR9Za9j5MxSPz/ZEzhDQ==
Date: Tue, 12 Dec 2023 22:53:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the
 dts files for RK3566 and RK3588(S) boards
In-Reply-To: <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
References: <cover.1702368023.git.dsimic@manjaro.org>
 <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
Message-ID: <5da1986c4db2e47c73ef8d33cdfd6fff@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_135313_577560_35CD00B3 
X-CRM114-Status: UNSURE (   9.45  )
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

On 2023-12-12 21:16, Heiko Stuebner wrote:
> On Tue, 12 Dec 2023 09:01:38 +0100, Dragan Simic wrote:
>> To complete the process started with the migration of the ethernet0 
>> aliases
>> from the SoC dtsi files to the board/device dts(i) files, started in 
>> [1],
>> let's add ethernet0 aliases to the board dts files that had it 
>> missing.
>> See also [2] for a related discussion.
>> 
>> At the same time, let's remove the ethernet0 alias from one SoM dtsi 
>> file,
>> which doesn't enable the GMAC, and add the same alias back to the 
>> dependent
>> board dts files, which actually enable the GMAC.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 
> boards
>       commit: 8a5f97b061432f72002b8aa158e372f1b10a079e
> [2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for 
> RK3588(S) boards
>       commit: a40d30460dda56c6ad308cb338e240bc4a625faa

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
