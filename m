Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CD7E83830
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 20:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDU58jVagO23fTUmQqnLqwM2nVGMkaReN6EJxu+4HxY=; b=byP/Dv0JxJILG2
	ufVQHeHoXw80txDpq8x4/h5G51IwcgPHUG2V99yggvUEBdwxfwbP/fgKfmsEDdPJZRt8tWwTDEmHC
	RMCKltTKo/lEvIdcpP14HsZe0Dr9iLOpT/SzScXApSyyJz0E0O9u85HLcQjfBB/Mp8VvKcUBuYr7F
	q2BbG9RdNJmKeQ5rZ/rZLWq4ULuuy/4Z3UzdNJVHLARV+uyCVKzvuvfZGpNRk1cpcDd4H/uzRhZgJ
	HdwdUQBq4+dBANeo9oCQY+taYYHcd1BlrbHqZkUIcd8701zR8FbTlBYkVbss+/N4HREwufQBF48f2
	YMNpFBl+Pc3/T8yy7aUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4wg-00000007Elb-2C0a;
	Mon, 16 Feb 2026 20:11:59 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs4wX-00000007EkN-2mjs
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 20:11:49 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2a9296b3926so23373465ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Feb 2026 12:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771272698; x=1771877498; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LpDrR8v0kz/WXCN7qPUJ4GEgTRa5+ny89JbRvW/gorU=;
        b=k+m5BmKeVaOI5USIWZ/JDZZWaDnS65GzZ+KFuPMg4YRjEBEXDNtqiEytShcDuNQN6U
         XtMqCBMjfdEhaDI6PQgx+CEkgQlYEfg3EBN0mtolHsFofZ9Lgt/IWl/0RBKw/1wC4P55
         vE4C2qP0vYQxD8KJ9lC3/KfwimTI660Sruo6p6DLaGU6TtnxtRPUqspuIYw6253hBnvi
         lnjn6GdHGCsSh334D0gtI/hX+zRpx6GVg3j+KwHkiGD0ifguQVFmcAwBc3HtfDgQaoCP
         rYeIrLmXI/djpg88YCyjAl6rJCzbWDQL774oEQhvzRP1EwYRWeIOxCpTv1vxyKH+HxRN
         q7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771272698; x=1771877498;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LpDrR8v0kz/WXCN7qPUJ4GEgTRa5+ny89JbRvW/gorU=;
        b=BpyGwXgooHtJJNRYH17I5n1osUGRUrcHkiPBQKIN4cZN3YEUUUdwcp6PxxLXr2v4Vh
         +hNEqEztgh/2ibHbags0NLZxvNgptzn3crBE3cTTkpJnlYAm1gDea8bcLlc5mNjDZ32u
         cqg8wZSqPDiIWoibbzWczKqTtwEWJsIrdekwqgKxUfZp+dpbOSjJDnSaIwuTrdV6upXh
         DsdFOkaWq5ye+ScAUROdmb9XXOICOYFDKGNraA8bwqGiIcIOMgWWRhbfibqYL2ReFUdt
         vtaCYt5t4CW/8DhD3W0MoJ3JF3+TUVDLr1xXzrdYJJm815aixIORVo/Dk4hLNeVDBU8m
         nJSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTQriiFjaecivbTkHMrd/+6fkbYcfaQqWI4h8u8XU/PwEuRLNAfNcG18X5E4dOVJPkRo07RjWFW8xhhXMApg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnSyCDzwfzyTriU605a7AEjQBtF7Bl3wp5rSM3k8G31sc0AtvL
	m06UV+hHZ/KoY42FImHOmU39PiY3O+Rj8ISM6tS4Q63hhEEfo2pLfeeu
X-Gm-Gg: AZuq6aJUqTBvIrr2OCok+rb84H7BDvUGFmCWId1Pe5xLo/JYS5+H15LLzrxfwl8JvN1
	L253X4U5XZphZzzNHH0pFEuVoOlGkuGcIFJVH2jVOmlmd65CWevGQras/jUh1S1mqTpvG9d/kin
	1N8Y+OP62l9DzBgWaNo80HT2oOurgn2zj5hWEX9YB7KK6DE8u118OqrPH2rfMo/390yb41eqZLe
	P4NRF+5aopY7Bnah3BFRXSmeR5UlEKVibHe7/FMPOIUGBl8zP3xujhezQpNKjIv9ZrpXNqAnFDo
	PAPRF3dWAJ9/iorOmNi72JIMnXYYMLrTG/gpFZWoe7fVZfdPWmd82YfApBSspMgh/B60Hhr7+3q
	vQUu8swqq453j/0I3EoKdN604zkH3WfJEB/QDF0kPlU9w4/JWVZzLyXdvJkhDnznvrZKoM5uA7d
	xaqc9Ew19uBde96balk6Ieo6QfHay3inYWvKs0bQ==
X-Received: by 2002:a17:902:d50e:b0:2aa:dee9:dcf4 with SMTP id d9443c01a7336-2ab50568335mr112837925ad.25.1771272697600;
        Mon, 16 Feb 2026 12:11:37 -0800 (PST)
Received: from junjungu-PC.localdomain ([2408:820c:9008:ba52:c942:b243:87cf:ead3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a9d5cf8sm76178625ad.52.2026.02.16.12.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 12:11:37 -0800 (PST)
From: Felix Gu <ustc.gu@gmail.com>
Date: Tue, 17 Feb 2026 04:11:32 +0800
Subject: [PATCH] soc: rockchip: grf: Fix device node reference leak in
 rockchip_grf_init()
MIME-Version: 1.0
Message-Id: <20260217-grf-v1-1-2088c966875d@gmail.com>
X-B4-Tracking: v=1; b=H4sIAPN5k2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0Nz3fSiNN20ZHMzAxOztFTTVGMloMqCotS0zAqwKdGxtbUAiDQW8FU
 AAAA=
X-Change-ID: 20260217-grf-fc76046fe5e3
To: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771272693; l=952;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=NkAOBLC6YzKiTIicItVQWCVBJRvcoaFtEfxryDX60As=;
 b=328UsHN33qU2eocu6zhmaD5eVkB3YU0oW5vGQUMHld3SJvNgwssol7QhFNhsKICvLyES7dKLZ
 JtYifvQcdblAwOKU1Ddn6NiK49jx1Ad5fxo0p3a1dIkjHw1VqY99Tfy
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_121147_552229_9366C73F 
X-CRM114-Status: UNSURE (   9.40  )
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

In rockchip_grf_init(), when syscon_node_to_regmap fails, it returns
without calling of_node_put(), which causes a reference leak.

Add the missing of_node_put() call to fix it.

Fixes: 75fb63ae0312 ("soc: rockchip: grf: Support multiple grf to be handled")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/soc/rockchip/grf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 04937c40da47..b459607c118a 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -231,6 +231,7 @@ static int __init rockchip_grf_init(void)
 		grf = syscon_node_to_regmap(np);
 		if (IS_ERR(grf)) {
 			pr_err("%s: could not get grf syscon\n", __func__);
+			of_node_put(np);
 			return PTR_ERR(grf);
 		}
 

---
base-commit: 350adaf7fde9fdbd9aeed6d442a9ae90c6a3ab97
change-id: 20260217-grf-fc76046fe5e3

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
