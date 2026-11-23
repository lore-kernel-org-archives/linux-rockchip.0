Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D3A606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OujC2Y6J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=sZXfdjud
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=HIGRyh0MoQCt63vbRkF5iUp8jmADQo8uv/eSJ456CBc=; b=OujC2Y6JhWdi4IWq9yQ1hSVDSf
	RG6vvdqEiSOvti7G+V6ykYX0KHW0ZlzlB5QA89m2jv797lXlbA0OXH99mnilV8mc9dVLMoiTYVmfR
	2qwbTaDP3lEmnOUisDpbKTsYjrQhh1uJbr6UhMmJg2SMx/DmrBwXiUFimwbgX4AzNI8MOrZ1/7lqk
	4cGSDuq3i+iQLfE+qcJYCIUof5AWEJ2uORvNuJukMbUjKtNtkhz81GIHj+uH5MasTe4P+NWSeJaDO
	s1NLvFeAOb4pDpSt9hB7dGNXnxUGtI1pfqqZ6LHtC/CualhRfMuEP+7TuSISR/UeRxBz1/zP1euzr
	pMM4m+bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXMx-00000004HCd-04Ph;
	Mon, 23 Nov 2026 16:58:19 +0000
Received: from mail-dy2-x00.google.com ([2607:f8b0:4864:36::])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXMW-00000004H5R-3M27
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 16:57:54 +0000
Received: by mail-dy2-x00.google.com with SMTP id 5a478bee46e88-327b1d5824fso3083892eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 08:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795453072; x=1796057872; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GH9PwUTkNOVR19n9V4pHtHTQ3cVhwyxReHCBvD2/+eY=;
        b=sZXfdjudEE0H91xmVXHkt04/zhVzcBYCDng9rz7Fmgu8CraQpHXXecR29/PHTjoSeA
         hhGKDU4Kr6A7y+TF34O//4nvZ4FnBt+BCecg3pYxmel0HEo+DgBKu4WFQVtk15sC9gRF
         sBS0AzPntns/Z1W2P2SvVta1pH6CfEUgVsFY1XQf+m1MXB+5MVoW/My04PHqyfAyF2cM
         6uc6h4PN7ZSGpChfEOoZPmyeQPHffH09b9pauVwxVVM8AxorQG5xbcUJ5AUMqqlpSB1m
         P81C7XcWDkx6mUN1Rg54G43VGaualxfPnsdGG11v6oNAZPTAyg/sKsT3lsXLoqQtgpr3
         L5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795453072; x=1796057872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GH9PwUTkNOVR19n9V4pHtHTQ3cVhwyxReHCBvD2/+eY=;
        b=moDZmiFLtZYcPCt58xCoBG0Yv93csp7wtl12Le4ZpohiXJ6a6sUxI/NxlomCQPCYIM
         hkc/mna2GMmA+dIKadNURdQrtLzHEXsNbtU1YtdR5XGu1DZstP2NzQO21ZmXxv1NMSEd
         lVpmwvaWrfEG0ZYi8Y7m2ikmCVXEr7S0lEdQepjaDzmTGH5av+chxoNsbp9cCtElY6go
         7ORBG2ZqKEgh4G0u4U0E7OTkNC3SZzlckwziz+AMqdzPQqNLnB7Bvk2hjUIR0vXlKxQF
         y9bxQE2swEnEIqh3x3SHJESHJeaoYMJrL/tpnopJ2EVZZTqwqXrdSeGIFd7Kict6KLUI
         Y3IA==
X-Forwarded-Encrypted: i=1; AL+hErF5LEipyTSefN+MDDT73JsB8yV020BmXmSPjjIZpYs4sByZcFNYqeUtEaciSAQUJ4coZ+ZiC+myNpJPjOHXXw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+0xlnmjPGC+EWv25tZV+DawKWdXl++BiFoYtRnOe0zd9ZCs6fc
	B3RDxL+HX+rGZnDs9y2JOGkrpASi2PDUnKpDdyc8fRaGD1Ei1NevEMz+
X-Gm-Gg: AZFdTZdrHZzB3rFHnbhuWQguxA2kcVSsvoZDjvs2M+mKi6gk5bkzsmCJ7Bv7/lt41qz
	T21bEL7i8Jle2mmz77OK/qGZdaVWk03dpKvFPdgWGR/qbO+jz1wvPzSneW+hQkevzSMlAZWNciu
	2cYQeMatbgM+EFriTVh78ElLKg+Vx+1XmuHJSjhHEVdPhT/agGOC4fpVP+uCRp03SWrgKKk4b8/
	2l1vdjS3t1FyXrqpRPozZQe2IGK5JRr8ShhcNyn/bKUzcLlcBWKcDOXzg5j/Qnxvsm6dvSxJ1Hn
	sbbJV5q/EDHH0FqienjTDT2H2chsmqCkB2i7XpbF17G/q+iw39xjus0ePIXloEOKIw9J3MvAHmm
	FOvGhmT9BcdmLqzAOUsBHNCqNy8F+pXGZwDA9sm6NRPHQGfhwYS8dsGZsyB8fgg1PU6gOiup5lQ
	4vpQcFj5+k62kiM/M7+c1ZAQMkFawymBMe11Xyx0lt87Qv3xPfLuwGWCgysHRF25uXcsVbusVZh
	KUYGNJOTuhc/miL+jJpXmPOIwB1RtcFL/P4AFtHVBsQGKT1uaM9FvFZEPNgaTJ4WCwwDBokct0A
	mMntseOTIlJxUQmup+OPlERU0Kr0CrwM5BYNe07gxDbC1RpN1pdykMH+jgQ=
X-Received: by 2002:a05:693c:8957:10b0:386:b089:3520 with SMTP id 5a478bee46e88-386b0893ad4mr3583969eec.19.1795453072013;
        Mon, 23 Nov 2026 08:57:52 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aa203267sm13315280eec.0.2026.11.23.08.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 08:57:51 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 0/3] arm64: dts: rockchip: add RK3568 XPCS nodes and enable SGMII on Photonicat
Date: Tue, 24 Nov 2026 00:57:00 +0800
Message-ID: <20261123165703.667564-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_085752_879793_0F68682A 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds the RK3568 XPCS node, describes the RGMII PHY LEDs on
the Ariaboard Photonicat, and enables the SGMII LAN port on the same
board.

Changes since v12:

- Move the XPCS reference clock from the SoC dtsi to the Photonicat
  board dts (Heiko).
- Set rockchip,sgmii-mac-sel = <0> now that the PHY binding has landed
  in linux-next.
  https://patchwork.kernel.org/series/1180426/

Previous version:
- https://lore.kernel.org/all/20261023053548.1595033-1-coiaprant@gmail.com/

The XPCS node is disabled by default and is only enabled on boards that
use SGMII.

dtbs_check passes with the current linux-next.
---
Coia Prant (3):
  arm64: dts: rockchip: rk3568: add XPCS node
  arm64: dts: rockchip: rk3568-photonicat: add RGMII PHY LEDs
  arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port

 .../boot/dts/rockchip/rk3568-photonicat.dts   | 75 ++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  9 +++
 2 files changed, 82 insertions(+), 2 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
