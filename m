Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A98B6C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 20:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DybS3AP25z1JE6q3vWvnDawBptocQBcgU1AO0avp3Fw=; b=DL2/Zf5rcSd5OK
	Hv4aKKcN/G1RvIxzUbaSJhK1nYiS5XI85qglX9fFzoKuBlaHfkwN+GmW/JbFdVwH0IZouII4PBIYR
	33j/kyA5uFLlCMosjrstkLbooUZkLJb0a1LIEYgHo1hLm5JQwPvplAnJSMYfbJ4Pddrir+84A6m0I
	nqr3eJFEXsYWneUzs6NI5knJR/FYmKN/GwwpzBYnBScAJGMrQw5JHCD/5W9DVg6IOgKf3Qeum+3Vn
	FhK7HWLi2aVSgE3KhL7hqqDptAViwnDDEQz8RoJzeHhJeOg0+o/qJJXOnaz6iwwvNyWRP3CqBJ28S
	1iFriCPCW7vvXE0R/tng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npc6d-00Hab1-JO; Fri, 13 May 2022 20:41:47 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbvj-00HVg3-Ea
 for linux-rockchip@bombadil.infradead.org; Fri, 13 May 2022 20:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=/AD9bW2iPnSe60c8xsO4dLOqYL4ulPeQkV4zFTrqJ9U=; b=DTdctgNIww2TRDwiHFaLVM2Dx2
 /uKjnOGUZyo/7oWIxzbehxXgK0uBaRz5gNGusK47lPzCMALBlQv470RUfB9f+wSpP1yFcuJ5b2i9d
 6zIqrHQvqjpCdb7NmbzNCHmSI+zOpe5N7xFDXu+1CYTdKfu5e+a/YxX0oW0eR+n46QB2c2IxYyIj7
 0ZogmltWOsdCX4QHi6CiTGHhyqKzfXj8hczNAL4hE6sJu63Ne0teLFzIC2SiJc5hukFmEQVE1oYKI
 EiBwYIvz19zVynWnq0PXWW4tLJrGP2ZgENsic79aC8SzUJyKr5LgvcrtWWVZmlVxAJJEN05TGciq/
 XAoD649A==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbvS-0006Wr-9L
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 20:30:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 7FC571F46483
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652473795;
 bh=HEETDTFaV8Jr4FyaHgjigxD+fRrzRsYiKM7mEOGoNmg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DRcfnh3oM2e+iY5OVgfBPViyB1R8HzRN7EGwmsv0HiWeiKn8/prlTyovriPq6aAGi
 YelkJEHGWZzlu8MFXOSCTG+7/BkAjSe4JxuTh7oqVNvOG+WguOdn7SRa+eNFe9loh7
 C9TlKiLRKEjVZgR7D6mqqyxBOQOlWBcZ49QucyW8xAet+9K4cCJfTmgKWC26E32uoN
 S7QrSxgu3duuuaGPweLKsq9EJqjEKT/g0BY98q5IKNH75Ka2UPQ///34Z222qALPg2
 HhyODvB2NtFiJ/ratDO2d5/qXSl8JFIWZXZjgahYXcnvlEqD6mpgFmnfh4pPCmVEYB
 kQnmBKFOn7gHw==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 13/20] media: rkvdec: h264: Fix reference frame_num wrap
 for second field
Date: Fri, 13 May 2022 16:29:15 -0400
Message-Id: <20220513202922.13846-14-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
References: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_213018_370229_A0B0B755 
X-CRM114-Status: GOOD (  11.01  )
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

From: Jonas Karlman <jonas@kwiboo.se>

When decoding the second field in a complementary field pair the second
field is sharing the same frame_num with the first field.

Currently the frame_num for the first field is wrapped when it matches the
field being decoded, this caused issues decoding the second field in a
complementary field pair.

Fix this by using inclusive comparison: 'less than or equal'.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index fb41e2fd8359..57821ee3b213 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -782,7 +782,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 			continue;
 
 		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
-		    dpb[i].frame_num < dec_params->frame_num) {
+		    dpb[i].frame_num <= dec_params->frame_num) {
 			p[i] = dpb[i].frame_num;
 			continue;
 		}
-- 
2.34.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
