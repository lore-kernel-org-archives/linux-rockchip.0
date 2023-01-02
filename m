Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3485FC3DA7A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 11:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EXiHJpsJt+yVz6BT52WS+njTHa77xip7GkmxItfSBvs=; b=SaeWCtZq4CcEGt
	pAiAihRjGYdLrk0hORwXF0EfnRoa/9UetJMMnej+CwZDiwyPOsGUvjlqOpKL+34CxWtDj6RKemhIv
	eUuob70yTRH5gYomYGT/NqJ7Z7ybbmddbGMBm24WcV6G8APfblLIdjk616j7K8W8hKHIPLeFRfKbQ
	po32ARCIzL3j0qhNmP6Vc5MueIeQF8iRb4cTuI+OX406lLXOKOraPFMZ+omH57QO/9TcBLPtzYlRx
	ltZdvCGz6SDUP4sJAvY2/r+zm3yGkG6jBq/SJkhCqnM0VLgyWerG917HIBsC0eEUBZWYUIRcp7iKB
	9bSNL3LQPr1ZZ1WKBdeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIlD-00AiET-KP; Mon, 02 Jan 2023 11:13:43 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIk2-00Ahpy-9f
	for linux-rockchip@lists.infradead.org; Mon, 02 Jan 2023 11:12:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 9643132008FA;
	Mon,  2 Jan 2023 06:12:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 02 Jan 2023 06:12:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1672657934; x=1672744334; bh=Q4
	jkeKlxInSpmYKiriM5hlWL/XAXcD0E9o2hKjrYh20=; b=J8PeGCvU8c4eObKh3+
	bNGsv051SDJEla1S5Pj1pZS+4oiBeiPA/WUNzbh4KnaKQAKBpSP6wCeXH6/M8PNz
	PA2lN6MxKizG6PBWpVEGSVIs3hNUxJOLjyTMxXrrHlNMdUgclBz9Y61T2BvOv4/5
	4J1e3EoF+aHlJelSnoZVeAZML/IUMLwkUp+il29KbwtNMa6vqXJluxOQmz/xJ94m
	7gmworcqDkAGhIY+NoGUpQyHIvvD9J2FKoiblJgBXjLGXnVgM7FhFGwMyjWjS/9F
	dDeSytUO3uq2HAzQdJEJ4ST7gVCzOWM2sotAVKHL+ZrwrFJMPPBWUVdu9ZKpgH5n
	srhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1672657934; x=1672744334; bh=Q4jkeKlxInSpmYKiriM5hlWL/XAXcD0E9o2
	hKjrYh20=; b=nvG1VVEmsRKsRIRYJX0fXBI5yMqFNBWpzfDL6xA5dRSLI/h2AFX
	1o5UgATbL8qK4jwbWgK/0W97QQ4k8S1KtSNhh3bDZZW8XXCwKNHmiTIPlVCutezl
	egc+hi6N7cD2PlUA6CP4n1mtlwCV6yce8Pkki8FXuHfftR1siP9wWrnEo0rVs52/
	EhxBmpCaA9kKYVZoq+HxywwZaZ18z93ETAocp/fWfwsK+qWCoPyH/90ZC0ztRnRL
	VHP11QLjJvUyDeLWB3BsPa7E8oEE0Idrje55mXHG5kn51sQ12Mzholnj+iuiidY7
	d9MolemNJG81h9qpT9DLCG1S7QMJVRGzIOA==
X-ME-Sender: <xms:DbyyY228Vlyb1CMgY4YiBAzMWSfuXsAVH9sOp-jC0h91KUN-mIbSig>
    <xme:DbyyY5FEqsAGhLiO_dT1WcBb8Bz7HNkpiq0PvoU4p3Hd-kxh1zLU1HIJFHCjRwZc0
    7bQvBRxrgbbAB5XnQ>
X-ME-Received: <xmr:DbyyY-7PJe3hsPtUDFcIGxy46KaP-CWLf3jqb6qkI72PTHTlGk9pFM71sknw46GjgC4qK5RJseCLaaeOwcP4wisFFgUYQ5FNc0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrjedvgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvohhmucfhihht
    iihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqnecugg
    ftrfgrthhtvghrnhepfeeivdegffeftefhkeeugfdvudetfedtieejuddugfejueektddv
    vdefueetgeevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:DbyyY33INEpw3XqsHPZJd1HV4IEt7PKvn71jqLDt2T2g0mar-_CUOA>
    <xmx:DbyyY5FvGXq077oZuSv-tmv_DcZTWjwOHfm9uaDiRzHnQFXA6qdleA>
    <xmx:DbyyYw9jo--dRjwh2FVBrx0EJIcfKMxDekFlrM-VSfMfYX_ho_lWfA>
    <xmx:DryyYx8Ib7FSYrwxm1-1VE4oepSZ9wln2Vcs_Uw8cFLpHcQU2837HA>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 2 Jan 2023 06:12:10 -0500 (EST)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Lee Jones <lee@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Ondrej Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Martijn Braam <martijn@brixit.nl>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH v2] mfd: rk808: re-add rk808-clkout to RK818
Date: Mon,  2 Jan 2023 22:11:47 +1100
Message-Id: <20230102111147.2580861-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_031230_435355_42500D51 
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

Fixes RK818 (e.g. on Pinephone Pro) to register its clock, without which
dependent devices (e.g. wifi/BT, via sdio-wifi-pwrseq) fail to probe.

This line was removed in commit 3633daacea2e
("mfd: rk808: Permit having multiple PMIC instances"), but only from RK818.

Changes in v2:
- Add a Fixes tag (Javier Martinez Canillas).
- Add Javier Martinez Canillas's Reviewed-by tag.
- Add Neil Armstrong's Acked-by tag.

Fixes: 3633daacea2e ("mfd: rk808: Permit having multiple PMIC instances")
Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/mfd/rk808.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index f44fc3f080a8..0f22ef61e817 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -189,6 +189,7 @@ static const struct mfd_cell rk817s[] = {
 };
 
 static const struct mfd_cell rk818s[] = {
+	{ .name = "rk808-clkout", .id = PLATFORM_DEVID_NONE, },
 	{ .name = "rk808-regulator", .id = PLATFORM_DEVID_NONE, },
 	{
 		.name = "rk808-rtc",

base-commit: c76083fac3bae1a87ae3d005b5cb1cbc761e31d5
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
