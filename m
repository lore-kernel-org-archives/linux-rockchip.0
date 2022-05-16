Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76B5C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 07:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q+NklyGhl82k8LnFZg+kAJpUU82KH3O3GBUxr9eVWZI=; b=rhxan3TFRmKj7y
	o6t+LIt+fxrmdMVznFj8xpfXs2lyzdKJ4uocGdQzHLNGkW3wNQpjGxfvjbtCBsAUt5REgNXsH1hFv
	9rq0RMEPGDnphjokUkCuotiw2qLAOoVcn24nKb59A7iJ3QpvK88AXUn584AcGGMmnSxd2IZDXU9OP
	2V8YCtjuEoINC4E9zmCoLBY/IbdxzSfVM4zRogP4bzIA+8PW3e9EEUIhJwBma1bJQXaBXYX0ExYiX
	2onQvQy6Xf7UhxIzKhrqVyimVOjvYXbbqGwURTZ3wJlYwW3ZwiWyAngI2zSI3FW4tE3KuhkO3z0jp
	BhBrqDdIMT+8Z7nbO/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqV1z-006P7y-9a; Mon, 16 May 2022 07:20:39 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqV1i-006P1t-PX; Mon, 16 May 2022 07:20:24 +0000
Received: by mail-pg1-x529.google.com with SMTP id 191so2124768pgf.4;
 Mon, 16 May 2022 00:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eCmVhbpaMLMmcTFdi6DgkFjueZN+yXGyrRASDyrwkks=;
 b=MimcTO2WieI6l/6Khw/SNAmf82P6jKFwx547sGazZdWl8jRlMD2VMo9wPw1mUBdEz+
 pYFe6FYiJfJKf2Ch4vXIvy2Fr/ZR7QNJS2lDlNL2jgRq1VvhGUA6OzLaxR8ZSupOeMJh
 1HUdraWPUJkoDwqjXYts1EBLu27FtoRajh0DAb7TDQaTmQsPN5Ll3Wm4I4QgaE7MMrEH
 /jgqad0rwlrhn8n1OChb3ksvHzDqPrJXPzhjjzcqkkUHN3c0VoHjPaE2NNFObHV8T39B
 JuRjaTYsjiQm3kLDtI3kPME6aMd2f6kmZZtQB6pmzW5Jidmpg2q/EJTgWmfaqWZsDccQ
 HSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eCmVhbpaMLMmcTFdi6DgkFjueZN+yXGyrRASDyrwkks=;
 b=Zj6z4kbjjRBkT84mbK0XDj0iAn66oSka11uYHXsAZ4xXYMD+3ByT9rbr0ubT8RClXa
 E7GLZFsyJ8l9Wh/8PU8+guTm10BZMUD7ODPceOQDdJnEE+bjdtp4xWbZnzIBsM9Kh6Gz
 +s0D5FIhptaJziZVzqZ27xEgck7ALG0DAA00AaoHgk2kxhNDH2GCEvDATwkRGYBMO3Z/
 AfcQRF2agjLYZGUzhs9VuVqMaukCf1nrffY2ALn7QU6eY355g4mzOoD4/eIaqL563QFM
 6aiCjxsqL4uA4NM6r6eqIN1J5oFveagw2BkrskibwwFxXLZxPaqbT+BX+p2F85AdqmOc
 mD0Q==
X-Gm-Message-State: AOAM533SI15pdkeqRBJ9DxnCt2MjmS368gp3kMkJFxY3JxPdwHc/Q3a9
 TDbCqYGhizJt3g1vvp/TLgc=
X-Google-Smtp-Source: ABdhPJzf+Ui53KjS86ZZVJHXvuIFOxk2AVw75xGanp9kj3NyZDFE2NKOkhUVdf8WeXh/a/C5tCPwJg==
X-Received: by 2002:a05:6a00:b52:b0:510:5cbd:de94 with SMTP id
 p18-20020a056a000b5200b005105cbdde94mr16009274pfo.19.1652685621649; 
 Mon, 16 May 2022 00:20:21 -0700 (PDT)
Received: from localhost.localdomain ([202.120.234.246])
 by smtp.googlemail.com with ESMTPSA id
 o130-20020a62cd88000000b0050dc7628179sm6035949pfg.83.2022.05.16.00.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 00:20:21 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Miaoqian Lin <linmq006@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: rockchip: Fix refcount leak in rockchip_grf_init
Date: Mon, 16 May 2022 11:20:10 +0400
Message-Id: <20220516072013.19731-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_002022_868697_6E7DA902 
X-CRM114-Status: GOOD (  10.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

of_find_matching_node_and_match returns a node pointer with refcount
incremented, we should use of_node_put() on it when done.
Add missing of_node_put() to avoid refcount leak.

Fixes: 4c58063d4258 ("soc: rockchip: add driver handling grf setup")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/soc/rockchip/grf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 494cf2b5bf7b..343ff61ccccb 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -148,12 +148,14 @@ static int __init rockchip_grf_init(void)
 		return -ENODEV;
 	if (!match || !match->data) {
 		pr_err("%s: missing grf data\n", __func__);
+		of_node_put(np);
 		return -EINVAL;
 	}
 
 	grf_info = match->data;
 
 	grf = syscon_node_to_regmap(np);
+	of_node_put(np);
 	if (IS_ERR(grf)) {
 		pr_err("%s: could not get grf syscon\n", __func__);
 		return PTR_ERR(grf);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
