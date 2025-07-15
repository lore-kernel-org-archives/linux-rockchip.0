Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597D6C83F1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 06:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0H6jcNDUxl1hEyCtq8fC1ISa1JQTKrpXRbwpOeuDGGE=; b=T5BzFvb9ZKfjW8
	HzKPyoAq5yrEpdLtg4mB4hT34KShY/YFG57cFx/bPDVT2041jDb4aGV3O5Qltg+H2QoVaRjqH/As/
	ToQ/0ISUCYPnu6oQOxFQqoCWPOnw02EqMju/oxgVdsqJL3L+FQCfqPuySEOzIDJulM1/YJ7YJgh+1
	ATm5dNWGySdf1E0m+h069MWRxhyIaMpEj92aSy1afhsW2mSTLJwQ9eDvk+O9vbANgvJrBOWRq27lN
	mybnZ6oUV8G8mtZnb+6GB4imR9gahSIWtOFlrRX1dzLgzjwY5tNuzSv0KwjMUhGYA09ukNny/qe5Z
	xcEwIkAmmKfF7iNp9zuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZGd-00000004Dvw-3uXG;
	Tue, 15 Jul 2025 06:35:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZCd-00000004DM8-1F6k
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 06:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752561104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=njsXx1MQHjG0pYvx/jMfwxyJj9N+8fHFUPSJkTCfXcA=;
	b=jQyqORKH8hzAnMsW1p1EfT9nITZ63oeRP3vC1+j7JgV8ahkXPVFA62Zcus2qdPEtPmniTp
	Q6VE5kBfr17moJqbFFURq8l+RBp2T8cLVuhCS9Yb7Fo9Qu70gcPk7zuRZKHaBy0GZqDxRe
	MD2J3rzQjWpFR46M55W3LkfCj0o/NMs=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-s6Qgn7qwMD21IT7utYlgPg-1; Tue, 15 Jul 2025 02:31:43 -0400
X-MC-Unique: s6Qgn7qwMD21IT7utYlgPg-1
X-Mimecast-MFC-AGG-ID: s6Qgn7qwMD21IT7utYlgPg_1752561102
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-ae0d798398bso403978766b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 23:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752561102; x=1753165902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njsXx1MQHjG0pYvx/jMfwxyJj9N+8fHFUPSJkTCfXcA=;
        b=F0y8GhbD1V7CMXqOwFvhC5zunPtLxmHeMUE12v1hS/YMMryf8dtVQ2+xH725C0o8jd
         EVTpTNipMOURBSYi53mbYeYnI4Ca4heuJ01v4T0nIWd7z1KW09DWpIG6xEGQk8VqKD7U
         65yx2Suk7LMzw96nht0y3ql89mT2P4wIeCvHb+Sgiilq5yCbGFRCI33lCnD/lh2gkWV+
         mgOnO7e4N0YPupkeyJf0jJgq7+XbJxetkpvHtKZVYYLAN8oz1gfbY2oCty7apKEUurV+
         NaDC3eemAtFD8Nltye/SFS8ZEnxBmBDlL3Vu5vdgIieG4/M18HCU9TWs9ddgqZrz/n4u
         Q5Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXKCtgMrLNvOg0S1ok1Ldw3BXlIhd9liwdjpGqlEwqLuJIHQsHH5u9yLD3SwBDsk+lMipc9oFb+Cs/gKyIdmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyazTBnRcPoRW5Ap+PJdct+8kYJwqSlINeT77xx4iVZ4q+mYYEe
	e6j5fQM2PK9eK2ZSLD/hbqjI/ynYxgnm6cD9DUHZ2UrLYrSAY0fOHwR+aDQoHCO29r4qwfvLd0z
	+YHYPU0UkNVZ29BrdDZs82IvCugwcN6VIgXq9FYPCfmP5/lZwdSrBeMAjB8mAAhrJYsSqC4pydA
	==
X-Gm-Gg: ASbGnctJ4eGVqhfWQsAqOzSAIMsXrTDWigMohVZIizcstjrlooAiUNw0Q8jtZQUyPBt
	6GvUoh458HHKTEWqsGr0gMWJAXaoCIcYsXSbDg5eKIgUqPlUzGhGbh4aKxMyOJbfecduBBBFTbQ
	9yIyE9CD1lmZ8uHJQoQgNwaHeixFdYOOxrdPNFC4xYIM3u3eX5C1eHYT5XX1qVbnT18z/ymZAuO
	z6wxyYTNw5Vtn5B+Fgm1cmyAhki+stTkF4ncRIRsDyYxG//lNN27q7fkrJ7JNqgJ4hGJUo1hrvV
	ccY1q8NYeac37h0BmGwTibQhedHlgTIyv0TWtfEqYeocO4s+togGnLZrpYUn51jdFCXD1wSg4tc
	MoYTvvWDScg==
X-Received: by 2002:a17:907:3e14:b0:ae9:876a:4f14 with SMTP id a640c23a62f3a-ae9b96bb26cmr146895066b.59.1752561101847;
        Mon, 14 Jul 2025 23:31:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbahyJQ8uPvvKj2Eu2Bjb83oyH09cB9oPzy2+yyYmKgrlH0TrWtXbUYxonD5LHJNMzFi0wSw==
X-Received: by 2002:a17:907:3e14:b0:ae9:876a:4f14 with SMTP id a640c23a62f3a-ae9b96bb26cmr146892566b.59.1752561101291;
        Mon, 14 Jul 2025 23:31:41 -0700 (PDT)
Received: from lbulwahn-thinkpadx1carbongen9.rmtde.csb ([2a02:810d:7e01:ef00:b52:2ad9:f357:f709])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82df56esm945349166b.156.2025.07.14.23.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 23:31:40 -0700 (PDT)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: merge sections for ROCKCHIP VIDEO DECODER DRIVER
Date: Tue, 15 Jul 2025 08:31:34 +0200
Message-ID: <20250715063134.100733-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mL8s6otuyU4RtgHvbd-aMbOur4MdYsO8uVZSMqsOtlk_1752561102
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_233147_426443_5E2165D5 
X-CRM114-Status: GOOD (  13.39  )
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

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit d968e50b5c26 ("media: rkvdec: Unstage the driver") moves the driver
from staging/media/ to media/platform/rockchip/ and adds a new section
ROCKCHIP RKVDEC VIDEO DECODER DRIVER in MAINTAINERS. It seems that it was
overlooked that the section ROCKCHIP VIDEO DECODER DRIVER in MAINTAINERS
already existed, referring to the same files before the driver was moved
as the new section refers to after the driver was moved.

So, merge the information from the two sections for ROCKCHIP (RKVDEC) VIDEO
DECODER DRIVER into one. This essentially results in adding the maintainer
of the previously existing section in the new section and then removing
that previously existing section.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5efcdb5537f5..d044e4f71ae5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21673,6 +21673,7 @@ F:	drivers/media/platform/rockchip/rga/
 
 ROCKCHIP RKVDEC VIDEO DECODER DRIVER
 M:	Detlev Casanova <detlev.casanova@collabora.com>
+M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
 L:	linux-media@vger.kernel.org
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
@@ -21693,14 +21694,6 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
-ROCKCHIP VIDEO DECODER DRIVER
-M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
-L:	linux-media@vger.kernel.org
-L:	linux-rockchip@lists.infradead.org
-S:	Maintained
-F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
-F:	drivers/staging/media/rkvdec/
-
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
