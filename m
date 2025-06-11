Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81923CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=upRzYaVra4zINtVpQmnYqQg824UBQz7Kp+11YprYhpE=; b=ZVp4MVYv/TSKugy/tcQt7RefVE
	VSES6R2bJ5algHEm2Wpis9wU4dXyr556i+jHI8dWfdKlDe+9/pZLS82+w0wYIBU9+L1XtkhShX75U
	1WG36B1Xj+s5oVNy3En6WrGcw4AdxxIfOa98t/LUySsAk0lfoigvO5A0UWjegdaITvJUcl72VSlxo
	KAH8G9wbA4yOcRygTtSSQwCCwGjgs0BlSFRIw76uBfUlUOT5+jhkMamtW1FTfi4ubNo9H042fCxGq
	qMNH74HevJ0WB8j87zVWQQUpynrpYCK1EG1+IWlZCQfdA1I0dlHgqREhLbwZWcaYxQeN+AA6ujOX2
	WTP0HF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoox-0000000DMbw-0DuP;
	Mon, 20 Oct 2025 12:17:03 +0000
Received: from mxct.zte.com.cn ([58.251.27.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPB3D-00000008dc4-0o3O;
	Wed, 11 Jun 2025 02:18:52 +0000
Received: from mxde.zte.com.cn (unknown [10.35.20.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4bH8KW1M0kz57fb;
	Wed, 11 Jun 2025 10:11:27 +0800 (CST)
Received: from mxhk.zte.com.cn (unknown [192.168.250.138])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mxde.zte.com.cn (FangMail) with ESMTPS id 4bH8KM1WDjz4xBTJ;
	Wed, 11 Jun 2025 10:11:19 +0800 (CST)
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4bH8K31lSsz5B1Gv;
	Wed, 11 Jun 2025 10:11:03 +0800 (CST)
Received: from xaxapp05.zte.com.cn ([10.99.98.109])
	by mse-fl1.zte.com.cn with SMTP id 55B2AotE031617;
	Wed, 11 Jun 2025 10:10:50 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid32;
	Wed, 11 Jun 2025 10:10:52 +0800 (CST)
Date: Wed, 11 Jun 2025 10:10:52 +0800 (CST)
X-Zmail-TransId: 2af96848e5ac313-fd045
X-Mailer: Zmail v1.0
Message-ID: <202506111010521118VJaiO_pb0rD7b3daxqox@zte.com.cn>
In-Reply-To: <6b9d5edf-7186-4d7b-814c-5c3f306c68db@kernel.org>
References: 20250610193403161UQCV5cVGXCRVDheTb7jvi@zte.com.cn,6b9d5edf-7186-4d7b-814c-5c3f306c68db@kernel.org
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <krzk@kernel.org>
Cc: <ulf.hansson@linaro.org>, <changhuang.liang@starfivetech.com>,
        <geert+renesas@glider.be>, <magnus.damm@gmail.com>, <heiko@sntech.de>,
        <alim.akhtar@samsung.com>, <walker.chen@starfivetech.com>,
        <sebastian.reichel@collabora.com>, <detlev.casanova@collabora.com>,
        <finley.xiao@rock-chips.com>, <shawn.lin@rock-chips.com>,
        <pgwipeout@gmail.com>, <qiu.yutan@zte.com.cn>,
        <linux-pm@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-samsung-soc@vger.kernel.org>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <yang.tao172@zte.com.cn>,
        <ye.xingchen@zte.com.cn>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCB2Ml0gcG1kb21haW46IFVzZSBzdHJfZW5hYmxlX2Rpc2FibGUtbGlrZSBoZWxwZXJz?=
X-MAIL: mse-fl1.zte.com.cn 55B2AotE031617
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6848E5CD.005/4bH8KW1M0kz57fb
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_191851_410233_88053E70 
X-CRM114-Status: GOOD (  11.01  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:16:52 -0700
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

>> From: Shao Mingyin <shao.mingyin@zte.com.cn>
>> 
>> Replace ternary (condition ? "enable" : "disable") syntax and ternary
>> (condition ? "on" : "off") syntax with helpers from
>> string_choices.h because:
>> 1. Simple function call with one argument is easier to read.  Ternary
>>    operator has three arguments and with wrapping might lead to quite
>>    long code.
>> 2. Is slightly shorter thus also easier to read.
>> 3. It brings uniformity in the text - same string.
>> 4. Allows deduping by the linker, which results in a smaller binary
>>    file.
>
>So you just taken everything from the same my patch - even entire commit
>subject and commit description - and sent it as yours?
>
>https://lore.kernel.org/all/20250114203547.1013010-1-krzysztof.kozlowski@linaro.org/
>
>oh my, if doing EXACTLY the same keep original authorship - the From and
>Sob fields.
>
>Best regards,
>Krzysztof
Dear Krzysztof,
Thank you for your suggestions. I have carefully read your advice and
made adjustments to the patches accordingly. I used your patch as a
reference standard, not just taking everything from the same your patch.

Based on your suggestion, I have consolidated the series of patches for
the pmdomain driver into a single patch. Additionally, following
@changhuang's suggestion, I have supplemented the patch for
drivers/pmdomain/starfive/jh71xx-pmu.c.

If there's anything inappropriate in this patch, I sincerely apologize.

Best regards,
Mingyin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
