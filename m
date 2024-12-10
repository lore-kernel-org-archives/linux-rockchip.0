Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E2EE7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 01:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tawh8CZvVQgGp20N0bqnTwCSD9b23qiqutlE9jOB/pc=; b=Ah9g8942yfNq3Q
	dmtLMIj982IYdytlHe/a2bAtkPqhdwefUY2s6e8h1I0RduXxZSwpL4WtRhzmf7qM2Ho1XRp5P6Hxm
	wFcc4gsZUIfoIt17rKXOp2dJXb2b826S/QQQSLhkT8COsg1N//cPgNfk4xD3BBZhLIj8nd/cmabAp
	bNGQ3K9YIlyaXiywUdogDyEP+1PsAixs64eFtjPEO5w1FzaosITV0FZolKNorNW2+iQoPdaq3c8C4
	FOe+Ze8Hb5O6Zacy8AJoqAsDPMMIItdw0PAvhcrDSSIqbTj5+Rqm51Qc5eIzIMJi06cpxBqNBkcY3
	4+HXNaV+KSlBWMeHhkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKpA7-00000009qlo-3fPW;
	Tue, 10 Dec 2024 01:35:43 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKp58-00000009pvD-12gl;
	Tue, 10 Dec 2024 01:30:35 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6d8918ec243so50940656d6.1;
        Mon, 09 Dec 2024 17:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733794233; x=1734399033; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nes5VB2VcAfNvacXIUYzGUAIsX7gVlGNiJVgrHet/68=;
        b=g1G5I81eJOstLqZYRVcgyO/0gCjTXxMgkN3fZwlA/pyKFuMOrnHPuJSJI9njrbEQX0
         Oc3XdZY/mn2P9+7oK3fDlFjXZrD01s2oGaMqAq9Wg7R7a1UyoGVy9hg4MPwrp/aX/Ifn
         IozEZEencvbLyiSkHprTnhBeQ5Pc45jorcfDmp/20TCAfipwgKIx35UHdesqMgLfuuR7
         AxDit9bE96HorBSqRzhvkabr4pJFjTzWbzTe7UGVwH00SzDG9zGfE7fHwAFa7zai7vkx
         GdcL6UkPqVZgtBk848JeXmd1xreeIsnIBUkYzcbkmJPjkzDaM6q9oYIc6qwkudU5vR/1
         ur5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733794233; x=1734399033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nes5VB2VcAfNvacXIUYzGUAIsX7gVlGNiJVgrHet/68=;
        b=iJoQI86RhMATP87jNxQyhzrY9MNrh5Rx+vBa/2pxExo0VSFma7rPVsWn6mNXcNsQVC
         K/KdOZT2O1hHLlay0WdYYi0yceX/KSU7S1TtbowcHd4rPMKp+8kSYzgnu4YqyzBWWvmc
         4SOSv4hv0WmoVuX/UAgXp+x92Q1E0wR8PRt214Y8ZT7Co4RdIi8CAr/+FQfNb2oYq6IH
         rodOcYbDQt8f8H4LFpbCuRNIELVmpg1k2o0fqFqUgAzW5CPsGQ2ML6Rw1pggJ+ncWrE+
         fpFSsx8X182UwZLyZhu4loxjRD045PHBxSouFh4LjSk7Kw12m45NXqO95HsoAMy3R4fr
         LGgg==
X-Forwarded-Encrypted: i=1; AJvYcCWTAb2j1Da+hVq0IgAC4u8TWoN/6iLpsxTYyL/rhE9WGs4xfN6bkW2klUNBpxbMbJrvXqTGdq7vZDDSpdoDLNTm@lists.infradead.org, AJvYcCX1sVQ/4PZGW4cwmfz63ElM3LdDF57gHaiub7k5tzykbfbCejQU12etX6NIqfnIjSfUXVuP7dTMtjL+sPsUJDI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3O+zhLzqlZEpyfQewK/S8WsDWlLmxNrp/7PCEpyso/YZNrpFT
	ptlwSy++xUDIZ0a2ao80qsBxJFcYyaKV4nHp79KNCmJSk5wYuM/s
X-Gm-Gg: ASbGnct0E19d3rw1mRWQMbAGG6AU/n6xkfnnMsgF8B4XlFuUonLLfdWPluJfBQvxI2Z
	w6C+fhwXn0ZYBe5OxqnazcDX6gEW/z42SFbSijXghNy2R/fAjLnG8CrePH+4VgtmSktYQiPIVD1
	oj3TfvTAkBPw/LYMG+hD5E3rLvlq+/umaGBAYzyt9eWrVfxT6CKeEDP8RAiTuTNWz/aczzdQbFv
	W+I0D5e5z9ZIbz+JblRcQlDeOlWwWiJ2NYXgK6oOlGUJJbxGg/Ai0zKnZCgTx6EPQ==
X-Google-Smtp-Source: AGHT+IGDRUk9+gv8pP1CJieucgxw/FIyVkf5JoAn+WsrS/JAfYgwU4trbE3sWTyJ4SkA4cp4lgjq+A==
X-Received: by 2002:a05:6214:d06:b0:6d8:850a:4d6a with SMTP id 6a1803df08f44-6d91e2d2bf2mr47046016d6.1.1733794232931;
        Mon, 09 Dec 2024 17:30:32 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.53.234])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d8f429a79csm36834346d6.72.2024.12.09.17.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 17:30:31 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	shironeko <shironeko@tesaguri.club>
Subject: [PATCH 4/6] arm64: dts: rockchip: add hevc power domain clock to rk3328
Date: Tue, 10 Dec 2024 01:30:08 +0000
Message-Id: <20241210013010.81257-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241210013010.81257-1-pgwipeout@gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_173034_284650_A4E28749 
X-CRM114-Status: GOOD (  11.29  )
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

There is a race condition at startup between disabling power domains not
used and disabling clocks not used on the rk3328. When the clocks are
disabled first, the hevc power domain fails to shut off leading to a
splat of failures. Add the hevc core clock to the rk3328 power domain
node to prevent this condition.

rcu: INFO: rcu_sched detected expedited stalls on CPUs/tasks: { 3-.... }
1087 jiffies s: 89 root: 0x8/.
rcu: blocking rcu_node structures (internal RCU debug):
Sending NMI from CPU 0 to CPUs 3:
NMI backtrace for cpu 3
CPU: 3 UID: 0 PID: 86 Comm: kworker/3:3 Not tainted 6.12.0-rc5+ #53
Hardware name: Firefly ROC-RK3328-CC (DT)
Workqueue: pm genpd_power_off_work_fn
pstate: 20400005 (nzCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : regmap_unlock_spinlock+0x18/0x30
lr : regmap_read+0x60/0x88
sp : ffff800081123c00
x29: ffff800081123c00 x28: ffff2fa4c62cad80 x27: 0000000000000000
x26: ffffd74e6e660eb8 x25: ffff2fa4c62cae00 x24: 0000000000000040
x23: ffffd74e6d2f3ab8 x22: 0000000000000001 x21: ffff800081123c74
x20: 0000000000000000 x19: ffff2fa4c0412000 x18: 0000000000000000
x17: 77202c31203d2065 x16: 6c6469203a72656c x15: 6c6f72746e6f632d
x14: 7265776f703a6e6f x13: 2063766568206e69 x12: 616d6f64202c3431
x11: 347830206f742030 x10: 3430303034783020 x9 : ffffd74e6c7369e0
x8 : 3030316666206e69 x7 : 205d383738353733 x6 : 332e31202020205b
x5 : ffffd74e6c73fc88 x4 : ffffd74e6c73fcd4 x3 : ffffd74e6c740b40
x2 : ffff800080015484 x1 : 0000000000000000 x0 : ffff2fa4c0412000
Call trace:
regmap_unlock_spinlock+0x18/0x30
rockchip_pmu_set_idle_request+0xac/0x2c0
rockchip_pd_power+0x144/0x5f8
rockchip_pd_power_off+0x1c/0x30
_genpd_power_off+0x9c/0x180
genpd_power_off.part.0.isra.0+0x130/0x2a8
genpd_power_off_work_fn+0x6c/0x98
process_one_work+0x170/0x3f0
worker_thread+0x290/0x4a8
kthread+0xec/0xf8
ret_from_fork+0x10/0x20
rockchip-pm-domain ff100000.syscon:power-controller: failed to get ack on
domain 'hevc', val=0x88220

Fixes: 52e02d377a72 ("arm64: dts: rockchip: add core dtsi file for RK3328 SoCs")
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 0597de415fe0..7d992c3c01ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -333,6 +333,7 @@ power: power-controller {
 
 			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
+				clocks = <&cru SCLK_VENC_CORE>;
 				#power-domain-cells = <0>;
 			};
 			power-domain@RK3328_PD_VIDEO {
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
