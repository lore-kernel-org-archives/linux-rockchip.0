Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1442DC982EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZLal36hwKW5kvqkFTn1iRUc9vJmzZ3LbTNcJAUiA40=; b=bZaMPgD3YUXNaC
	/TrdlW2WShdb4GQu1ecPnRjpBmVPKdxdfu8w9H5pGShlcODnDgYci/vquzfhIwWAP/73ty4u7pIah
	ZhfsKATmH/JF6E7L7JF2L/JOGcgwvoflkNYmQzOtc00dNS5tTJOgXWpZR3P6+Ul3pmKoS7fJtX95o
	O3ERHMBgPSXQUY+a1m0MGFo4IYxwFcQurEyXFXBxOVwCOAPSRfdYuvaeHu7GAZz+mj3NilulPT4AY
	xcYmdai97ttp8avaCGqGr11Cfaowkzlrpzg57bPBhimejmcnix/lpmEbimDyEYs6amLrdrnOV7G7V
	iMoiJSMfd+qcBZh76UOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9J4g-00000007hSn-2p7d;
	Wed, 23 Sep 2026 09:15:34 +0000
Received: from out-17.mta0.migadu.com ([2001:41d0:1004:224b::11] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9J4e-00000007hQg-06pA
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 09:15:33 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=oaTRjCWZnQNokZg4Q89meVlVIFu2T26bZQvvNaVlNs8=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1790154930; v=1; x=1790759730;
 b=QEbIjIMCnk1sQ73gumwPQOBIS8aq/erpZ2gQABiGdIReV+nKPbhCb1JEfiQJ7Ujljjej5HQA
 Qh4qROVxBBGavLkjo+cwll/ou+ei7uMUPtTZq/TtctQ1Dm+QO3TiYmLVSjJ1jxfaIpetdUpcdcD
 j6tX9sE8sbeUiviKhMoxBaopBJcdAQtgXn0eGXu6VK/BbMF88xrtnY6KJ/6LlX++CNOEqrFoMms
 Uz1dPZVJ+Kd+RjZXz+bnvBOEEk0M7eGW7yVZ/4oUqSaaDSTdjXiARbK6F9wJ4GYmvpS84zx9A2x
 3UqsBTY4qyCyYqbjVNPtTAC8XSXtQM94eMZP+ocw59xXA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 342944e3381b851a;
	Wed, 23 Sep 2026 09:15:23 +0000
X-Mizu-Trace-ID: 342944e3381b851a
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Wed, 23 Sep 2026 11:15:22 +0200
Message-Id: <DLMKYI79QQRS.28Q4ESQ974BU@cknow-tech.com>
Cc: "Tomeu Vizoso" <tomeu@tomeuvizoso.net>, "Oded Gabbay"
 <ogabbay@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Jeff Hugo" <jeff.hugo@oss.qualcomm.com>, "Robert Foss" <rfoss@kernel.org>,
 "Sidong Yang" <sidong.yang@furiosa.ai>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Sebastian Reichel"
 <sebastian.reichel@collabora.com>, "Jiaxing Hu" <gahing@gahingwoo.com>,
 "Nicolas Dufresne" <nicolas@ndufresne.ca>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Guangshuo Li" <lgs201920130244@gmail.com>,
 =?utf-8?q?H=C3=BCseyin_BIYIK?= <boogiepop@gmx.com>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 06/11] dt-bindings: npu: rockchip: allow DVFS and
 thermal properties
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Igor Paunovic" <royalnet026@gmail.com>, "Rob Herring" <robh@kernel.org>
X-Mailer: aerc 0.22.0-24-g39041fd9f179
References: <20260922080114.44662-1-royalnet026@gmail.com>
 <20260922080114.44662-7-royalnet026@gmail.com>
 <20260922160602.GA3529337-robh@kernel.org>
 <20260923085755.16219-1-royalnet026@gmail.com>
In-Reply-To: <20260923085755.16219-1-royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_021532_230958_A235ED26 
X-CRM114-Status: UNSURE (   6.30  )
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

On Wed Sep 23, 2026 at 10:57 AM CEST, Igor Paunovic wrote:
> On Tue, Sep 22, 2026 at 11:06:02AM -0500, Rob Herring wrote:
>> On Tue, Sep 22, 2026 at 10:01:09AM +0200, Igor Paunovic wrote:
>> > Assisted-by: LLM checkpatch dt_binding_check
>>
>> Drop 'dt_binding_check'. That's expected/assumed.
>
> Will do in v3. By the same reasoning I will drop 'dtbs_check' from the
> two DTS patches, 07/11 and 11/11.

Doesn't the same apply to 'checkpatch' as well?

Cheers,
  Diederik



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
