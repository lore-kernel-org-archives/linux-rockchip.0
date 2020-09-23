Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9C1C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEF5D214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DjQ7z8r4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kTsW68Fp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEF5D214D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tA9pNXP6mbqPQnUOq8/0Tiq5pCd/3LSzkQWrB0OasO0=; b=DjQ7z8r4IS2V7AH8SC5NX3Nb0I
	UceTJQSVrI7pv/kES7bGh6A7ROtXpiCHi5LTHJrvFbHnDHQ7pGgwaJR7IwkztqxKXpoj4Sfi3xbJ1
	B8cEfROmfE9tlHyPp2Oi3cR1sJ3iliSXcHVqMnO5GIY0Cju/iFVXYwaAnq0aTX2BHSiy7dnN7ADTW
	2LIPiawUIgcrtBtngSXyTDIVYBn6z28+p8ttuknhyKzTuj2ydEFE6v5b+Ewv9Re7zqI+gM2HGT0+I
	p+GMf2n5tLDrPZIdVlntjlYm/a2I5w/jeNRuKlFwiSNuhzBbw8ats5TmcQoYUZcUS0h6zOKG8qP5/
	eHXIHi6w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL19H-0007Ni-Me; Wed, 23 Sep 2020 09:33:15 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL19G-0007N1-3C
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 09:33:14 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 7so14023866pgm.11
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 02:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZBx9wsYnF/skErc7f9ulQ7PEZnlU/1O8MVjFVsPTO8=;
 b=kTsW68FpkVQ4TRSOsRO9hzNLFxAKMlAZ0b2vkgS0K4PkItgjQHjtwtG/q33gBXDOgx
 Zrk82DbS2/FeT+q82Aax0nH3gsRlSA4hqeS4bdTZMBNrl7MDdwFdyn0iagURmc8YaAuE
 hlyoodxWsqkiI0TWWw9yrJ9sEYeksiDC36jN3qGYvDoul9MkVt1FcQNbxro9RndnQ991
 P15x/uUYrE35V2Vdz9l3zFhxaj+h8hwGDNq8vj87xLhCx2xC6v9JSaAC5uyIquFRXdLd
 xsJq9wy2rKqiYuW5+s2IZBXzlyxiwWpCc0w18tGhNgWkncbmHyClspw7svlnkZsgJHZi
 GyQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZBx9wsYnF/skErc7f9ulQ7PEZnlU/1O8MVjFVsPTO8=;
 b=uaVIaVkbg7hMrhrE/4MZOzTw2LxBja5sc9IBUhl2qbNa3edADKBTayU5DKCMIXMtyw
 SiLZtk4TAct7mAt7RVJhYbmyH6WnIP06I0xEQUatTqzi2+myocMUFZAnMsEUR+bs9sex
 6lcPdoyMIYH4OE4Ct0G2ddM9yhSH1yHIC84j+Hwbk6wvkTuT41Fm2mtE1jCZsNK1G0KI
 BdVuKKJrnBjPaNqMf0EqcF+U/WQtKU2Jucn5Q6WrfwP1+QUH6e2PifdExJSgM6HwUIOy
 IIi18H6UR40J8TMGNZQwh5h5Ym74NYGuAJQqqvXI+s8N6hYpUS3wRcC+uO1H8eOvF/3K
 xsGQ==
X-Gm-Message-State: AOAM533LGPqq6EaWG3AX34tWR61h9WCX09XLJT/kFRsARhhaasnMXwhE
 XgOSLeB6XhjniZ17fUdlq1Lc3F/2jtRZVQ==
X-Google-Smtp-Source: ABdhPJxlFnpjRMoMjuUDlvd51GdH4AV7FUsTPSUvpoSGzq6tS6Hc9gqPjXoDWGobPPwmt6EwzRaP8g==
X-Received: by 2002:a62:92ce:0:b029:13b:88f6:3935 with SMTP id
 o197-20020a6292ce0000b029013b88f63935mr7500731pfd.2.1600853590305; 
 Wed, 23 Sep 2020 02:33:10 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id h35sm16874348pgl.31.2020.09.23.02.33.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 02:33:09 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] arm64: dts: rockchip: rk3399-khadas-edge: missed nodes
Date: Wed, 23 Sep 2020 17:32:32 +0800
Message-Id: <20200923093234.1512037-1-email2tema@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_053314_165308_6600CF37 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: art@khadas.com, gouwa@khadas.com, nick@khadas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Artem Lapkin <art@khadas.com>

add missed spiflash and ir-receiver dts nodes to Khadas Edge Board

Artem Lapkin (2):
  arm64: dts: rockchip: rk3399-khadas-edge: add missed spiflash node
  arm64: dts: rockchip: rk3399-khadas-edge: add missed ir-recevier and
    ir_rx pinctl nodes

 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
