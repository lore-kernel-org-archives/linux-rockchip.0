Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E961EE49AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lTjsN7NtZbYJ+FFzV76BmgIvoLb/izhX+m3wfnj9dTI=; b=uR2sFhwC4fXcfZ
	j9S5gwsV4onuZBhHCLDTRCq/LYS4jpUKpWvHOQKDBX+idpbG+O/7Q8g7iqkKsmv6TCT0k4sWD0YRz
	0hcP9TyDtPHXTI8XJSTRs3zmvQ6QjiqaFvrPeQnrRnh3/RaoUguY+ksMDIbIgK6JIwpVA5+KuDJ5N
	cZHPvCRDS8hFG8V85l+i+Ry8rwI3Wu/Qtt05Jcs/9lzd+ao6NFf9sHTAveCSq5l9qPtjAxP9zcgW1
	790/PVwKPKO53CJgV2w5no9lE+Vo3wc2efBWNh970pm0LLc1+Jc8gHSfpn1a8VcNYa/4l2xtgj4qi
	LaItHStCopAZdbs+DDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soNor-00000009ndb-0yld;
	Wed, 11 Sep 2024 13:55:41 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soNlG-00000009mK9-27o3
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 13:52:00 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48BAnBB0027599;
	Wed, 11 Sep 2024 15:51:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=8x5WYgjMDMpnQ929UybthC
	m8FyP9r1CPBj4apvbGduM=; b=5DEXhlLe3MNxVRexH5TEM92XsJG+4hQaC7cFr2
	11eMEu2XF4qXgFkaPc6gx3VqbLgqRaPF1FNc5w8I0ihgbazWyu4DQ3ur3GQya/36
	XF+xNhLDYi+ywRCTmwCPo8O97JwyAOjeu5xlWgj28kPyUIHvocm2u1z7/R60AUqO
	Vy/jyvKrYS4KRCg9Yk1FjH6y7TeDuqoRkk+0GAnBNkP9r5nkFNJITXei7Gi+NnEh
	GMEMiRmno+7uMjT23NpyFASdqz6MaBLarBgy34DetcJdnfBTDsd7Y81T1cWi9tdq
	3Wh0SCGVJ0LwAowY1zLIqbesPIdRXjaV1wcZfe67sAm6h1eg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41gy7sfggb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 15:51:35 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C5EE740045;
	Wed, 11 Sep 2024 15:50:22 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9C631233FE4;
	Wed, 11 Sep 2024 15:48:32 +0200 (CEST)
Received: from localhost (10.48.86.208) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 11 Sep
 2024 15:48:32 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Hans
 Verkuil <hverkuil-cisco@xs4all.nl>,
        Fritz Koenig <frkoenig@chromium.org>,
        Sebastian Fricke <sebastian.fricke@collabora.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>
Subject: [PATCH 0/2] Add WebP support to hantro decoder
Date: Wed, 11 Sep 2024 15:48:30 +0200
Message-ID: <20240911134830.161091-1-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.48.86.208]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_065158_854738_805F9444 
X-CRM114-Status: UNSURE (   9.17  )
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

Add WebP image decoding support to stateless V4L2 VP8 decoder.

Tested on STM32MP257F-EV1 evaluation board with GStreamer
using an updated version of V4L2 VP8 stateless decoder element:

wget https://www.gstatic.com/webp/gallery/1.webp
gst-launch-1.0 filesrc location= 1.webp ! typefind ! v4l2slvp8dec ! imagefreeze num-buffers=20 ! waylandsink fullscreen=true

Hugues Fruchet (2):
  media: uapi: add WebP VP8 frame flag
  media: verisilicon: add WebP decoding support

 .../userspace-api/media/v4l/ext-ctrls-codec-stateless.rst  | 3 +++
 drivers/media/platform/verisilicon/hantro_g1_regs.h        | 1 +
 drivers/media/platform/verisilicon/hantro_g1_vp8_dec.c     | 7 +++++++
 include/uapi/linux/v4l2-controls.h                         | 1 +
 4 files changed, 12 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
