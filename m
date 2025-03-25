Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9858BC3600B
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Mar 2025 19:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74lcOMpQulY32e+k/T/CiZvACvTnhza8ll9ojiw8r4k=; b=MHwf9yo+40jxgs
	jaqetqRpS+j2BHA2Q1fPbBb1/cZAts8T3bQB5jvE41egR/z+304ERJIO865qu0Knc8ycwhCZbnl7L
	Nn/ZZ/wR3iDuoyQt2jG6N13Ot04nq91NE+bZ73tmRUOpoolxGQ/eIFs1Ux6JCAMaFZewNfjBsccEh
	QDMMSvWYMyNPE5QMP2zLcSFi0Ax2b8zmEgPZANPKKgGm0+rhqnfXnvBiYIbAF1/+FYC+yC9JSkVhx
	kd3cbOWn5JNiZEohQIQDvOJo7EoxINhVMG7HauFpFDbT/9vIdDM4prYbOGi1Dp3gHMnPs4OxE37VE
	tQxBCJ43d8zvZXltT8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txAMl-00000006ukZ-2Ija;
	Tue, 25 Mar 2025 19:55:15 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txALP-00000006uaL-0AnD
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Mar 2025 19:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742932429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EI7ofptYS3imrZOUBfDtDPrG5GfjZrzOydWa8JIhV/s=;
	b=ZY5MdTrH39bLoBSHq0TpWMB0BkDKVF2kua0o1VC+UVkS+feX4ZTcMg8zeArLfp/3nXWPTu
	j/sqVreAzXjJS+6JiCN0qF9LgtgJOpAW7z1nWJzu2QZr20bUElU8Y5CENyAMgFC4MRTYfG
	QvrsMAPRUW/92iOubrPG9UidbgPjwJY=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-262-lv9_j2QoPSyy-sMNu23O6A-1; Tue,
 25 Mar 2025 15:51:58 -0400
X-MC-Unique: lv9_j2QoPSyy-sMNu23O6A-1
X-Mimecast-MFC-AGG-ID: lv9_j2QoPSyy-sMNu23O6A_1742932317
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 365E5180025F;
	Tue, 25 Mar 2025 19:51:56 +0000 (UTC)
Received: from puchatek.local (unknown [10.44.33.225])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 6D3E819560AD;
	Tue, 25 Mar 2025 19:51:51 +0000 (UTC)
From: Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
Subject: [PATCH 0/2] Enable HDMI features on NanoPC-T6
Date: Tue, 25 Mar 2025 20:51:45 +0100
Message-Id: <20250325-nanopc-t6-hdmi-v1-0-299a2ed45878@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFEJ42cC/x3MQQqAIBBA0avIrBsoRYmuEi3MppxFJhoRiHdPW
 r7F/wUyJaYMkyiQ6OHMV2gYOgHO23AQ8tYMspe6V1JjsOGKDm+DfjsZLZFyyoy7diu0KCba+f2
 H81LrB+C2lkFgAAAA
X-Change-ID: 20250325-nanopc-t6-hdmi-aee3c368f5cb
To: linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Rick Wertenbroek <rick.wertenbroek@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_125351_200181_7574B9AC 
X-CRM114-Status: UNSURE (   8.30  )
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

This patchset follows other SBCs and enables second HDMI output and then
enables HDMI audio on both ports.

Tested with 1920x1080@60 and 3440x1440@60 displays. Worked nice, audio
played on both monitors.

Would be nice to have an option for more than 60Hz (larger screen can do
75Hz) but I assume that this will come one day.

Signed-off-by: Marcin Juszkiewicz <mjuszkiewicz@redhat.com>

---
Marcin Juszkiewicz (2):
      arm64: dts: rockchip: enable HDMI1 on FriendlyElec NanoPC-T6
      arm64: dts: rockchip: enable HDMI sound on FriendlyElec NanoPC-T6

 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 54 ++++++++++++++++++++++
 1 file changed, 54 insertions(+)
---
base-commit: eb4bc4b07f66f01618d9cb1aa4eaef59b1188415
change-id: 20250325-nanopc-t6-hdmi-aee3c368f5cb

Best regards,
-- 
Marcin Juszkiewicz <mjuszkiewicz@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
