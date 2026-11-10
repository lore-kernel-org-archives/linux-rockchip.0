Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE43606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 20:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mn2T9KXd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bauvin.com header.i=alexis@bauvin.com header.a=rsa-sha256 header.s=s1-ionos header.b=Gcu04qnJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=38KWo6JLxRyHIEYhMnBV6NTbCuEYhZSA1Dbr975oiHY=; b=mn2T9KXd7RLQAchkGXs7h+4wDD
	M10K2W8zwt0c5BZsKems8mQPYQxaRN5Y/L45XJjcxs0t5WaIscbWkG4gZcON4EDGn6uWvqso5tugT
	AfR38WqSNOVNyxlbfyxCvDFcK+bBkD52aX3/BoPHVUvlxgHhagwmz1wVX1gtaISTEFSq+A7rXlAgI
	5E5to27VhOYC2+TJXqroanCLBPY5WvpejT9DE4I27gYpWw79Ui/JWqF3C8ywjmAU+/sotekszXhP2
	W9r8bDTksXMXskXXZGphJuQ+D0HeSj0QMrpMgYLJ5aLh37VXo+aCv8hhidy8RZCl6QJJJgD4FL/s0
	fOBsQrCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQs23-00000004x6B-23sP;
	Tue, 10 Nov 2026 20:01:27 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQs1z-00000004x5K-2J5V
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 20:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bauvin.com;
	s=s1-ionos; t=1794340879; x=1794945679; i=alexis@bauvin.com;
	bh=UaCMwsKF+tF0e7vEsMo7urmrW+a8tVcmg0zruf9RRDg=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Gcu04qnJiU5lON90TZvrf6OF+P1fCoyZF6gEc2vLrDWyBDE0r57nc9JsSay4Ywsz
	 8ELWict61CeYlUV3M4tiOA9tmBBz7rTfvqlFb5ffixmOF8ps5V/p5SKzX2IIIUP9J
	 MeOTBrhXJoeFT295Fpgz1poFpU/Pj5381HJQlE8ghSb3DfuhtUFwgHb7iwjv40w/B
	 7cc1frltMbyZK6t1P5KfMV6+0k3Zc7Hgh96FdH5tqxlqapDckGvPtQfc8+D6Prlek
	 +tXZziwwbyVbtDvuAmjcYp8/opgjGkMmZWhuvaSTpRVl/+UOI47bG74MLvtr4cDQL
	 iKTV5C8cjH7tSF3svw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from client.hidden.invalid by mrelayeu.kundenserver.de (mreue109
 [213.165.67.119]) with ESMTPSA (Nemesis) id 1MhDEq-1wmqWC41JK-00cY17; Tue, 10
 Nov 2026 21:01:19 +0100
From: Alexis Bauvin <alexis@bauvin.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexis Bauvin <alexis@bauvin.com>
Subject: [PATCH] mmc: dw_mmc-rockchip: fix training on devices with internal phases
Date: Tue, 10 Nov 2026 21:00:46 +0100
Message-ID: <20261110200050.2529828-1-alexis@bauvin.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rpYwODSSFFKhZl6mHGbb8vCgBKd+rzE3MRa9iTkVs0Y8mfQ2PaV
 K8oQL+oBmFqVwHfWt/FK+TFgXFSrjoi7qUvbr2NZC9fiwrUKM68TxnmmByS8YM42aHlvJbG
 YiKvxbSPDMm4bskhg3CtAkORnD/nV49CeQRh8RzcoZn5t+iAOvffd+dCJ8cnWtTPFXSgZXM
 vv2PdFDYu6L8ImGwlurVg==
UI-OutboundReport: notjunk:1;M01:P0:MdFXAWOmCFc=;jaALaOziPN1PSstqif43maK/otK
 0LA5mE6I8CFHvTCuJL6At51io+PssEhOKciurjWHK/dVyEWmKMSwWNxeWseCsDKUbYy2kkqPw
 RUYyJZj07a7+9JWkO9a3ISTp8Z0+wvaCu9baGjboBauyMwZzGljXpxUx/OqYhrfeFtA9Vj6JI
 ol41FlRU+H/gfQFqgcT1vsFFlhi2iQ1ChTP5RMhSw3Qmoam5/jGyYMdz7VyGJSw7hnQ7Y6iNP
 OB6Eo45kDdWdRwLP9kzmSvn8R0fCl4Ep8mky47F7aITyaa9VDnsk4qBkC69UwO3NgKWIx7B3Z
 rvKhfT6cWPTf1TnbOm1to1UQjyaKkBjkcLyWJcv3hKRNkp8d2X2ABG6pyfc/pcn8QtGRSYOc+
 Fax6mNPk37gjHDpp2/l4r4IzaFkJXastyI3ysfyfWhju8IhdtpUlxqw8bl7Fz8yqdp7LDiSXS
 lYfnHqC2sOdQ/9AyuZ1MCFE1kxwIO2eEMmuda+AQVfzrTuoBagLNGmmzE/49zmbcesUtoTJx3
 HAQH5C6Jg4Vj+DL75/0eRpFzsI/QN2sb2WTSPArXY13GqAdUuAQQVrirQH8g0BVIApMkoMd/n
 3+5x+A3uwFDRpQdWD7lM9tXZQ5ggoX9+Y1jbhIcqG2K59YhHAD2i6bMsPbJAYtYe7PKLTdony
 oOTS9UU/DbWsEVtGDWcBXKszr7oD5B8VWwH88Vek4MshSk5OOowFCusv2PY4G8PiZo6UAduMG
 JJGbx/fY9AmimCVrVXmKVQl6/uXgMK9Io4qpaXKCuHHOuyBjMgrcvBGxGb53TOonbRVbFGv5T
 dvBepqVuwWPv1o3pefo9HTeeCFMnThpefuikus3mPX7lHwNtw9PHRLAN2ujQIpWU1A132bwoR
 y5YrBDxTId3j/wdC2cG33CQ8FxIDBjDd5BTxwvhw0ms2vUkAZTtLbMnTi4jlaFpTt4fQsVnsv
 VgnQ+lP1n4wLu2vwkTpXaz2KkZV9cRmjKgRGdv+xlpMoqHlcsg7F/xJs8ZJ5wzh9NmlX4uXZW
 qqE8TeODI2tNJW2udvi7cYdiTFHRaketCEVkI2C3tbQxbwswsQoTPchKM8ErgrtNnZBLlstNn
 vYc/JO5nYYNv3Cgrv8iusnwuOUFii+daBRik12DkXqrsn3DzIpXyPClnWfo8DnFcxDVvuE5bs
 m6wCCnTh4UhQuzGAGHozuPAbUJIqUMzm4oHbx6SsseS9BNy95at6N3adzxRnlVvx5mYSb1iWo
 gkUSoUwKhwTRdI8MOfo3f/mpYzoU54m2cXZuWnw4H3+WBGChGjiYslcgfZgZO2irMTU/XldzC
 OtKjAR7h+8yRL0bI3PKTZ3PyMDpzEimGGyAh1/x/oa7pDPtI42764/sxJeZ41a3SJoSphX4jF
 xpBERsPbLzgP8xXvjO8bf1itiekevyVurLudX1iVmadJEZvM/hnA2MPP77NLJpKxDJ5Q7TOEa
 sU4s4vhQ4zKYCNn6LnAX1q+Z/rSaFyiIPA5KTtHuRQFrYdD1GEzIVCJ6PZBTs6bmoEwYeUJNB
 tGaM3JJIWSAb+7KQPSmEdNsqZjuCVKs5YJTDv4PjKVvH99cTKPh6EYuGqnYnq7MX6tfvtezqr
 0nzVz3wOhuWmNbpGl9tzQeN4DOcgFms93+N0osbrkCfQ3fjqbElP+dGKj6/fcUhNOs3GpRUxe
 uEwfJISyBu6i7ITlnj3QrWz3QGnUXkhQOoro1eWgFa3OYYdejeWkTpIMDrc31/arZ14frHSxR
 TfeNqZfRYh3qRYWXsrjys9CAUIjdO/0JnjSeRxlpvo5uLJeM/DZev+3ehZ2wTVi9VWlTfTZZC
 D/SOz66d6lOJTmJnkkmM9FE3sS0xe9zD6+QlutN3RyH23SYCyz0SFskoSWcMYixpnQST9RXBD
 nWDJidijQmyK9DAb0mC0fSbehEV2cUtc1+xxTn/mQfGbzRmyMjZPykUyAqlDSrl9rH2loo6tI
 YitfN2TdH+2HBaHPWgllFv7xiKptjh5N/flGimRfeiZaYn1hO5pLQHwEqe6yEDYEB3d1VVPo8
 ESJcQb1pn0dp5xtV1SKaS6j9BKvT7fozOgB23O8BKacYQIZqoMq+CoevBfXZqc5wRyzPSLEDV
 xLSPm3+gMQLtEkITFXpjn7vdKdUZNaCT+52hK+CaWCAf7J2KyfVzJKmfWrQxwAuC4sG3WyhsP
 wOkA2xwAg713r7ahkbN2w6V9uAtoRYdpU2OMrGo3STPShsJ26pnBulLFDNZ0/aRxlV3CA5j5C
 KgAOEddTr3NzPMHsP1kjwqeyyPY2yUgu90231UswityAAY2jrUFNtIWdCAJMEAPK1JwlHY8CK
 Kd0NcS8M2/XVpFq3M8+C7WnA/BsugI1AquxA8kSu3fN+PjgB1Q4uTZVXxSU1m7Fg8LBX3s/Uc
 9wb8b/gnaZCuLniuBhL1TvxPm50ZGxFXxX498RZ+X8aYXUdJsRryfUCoCqy9qoztXuMat44QL
 OyZaa9tx+fru1crYeP/vOQhHwxQpqZbZHq0tRaArDtODO02xgQWWfZSYlRPmlOVwKNnq/hnZx
 9gPQZyjHWDdOhfYN4Ac/XtVMC5ok28uLRkIYZEtHqBX0hf2fXXrqczvvK7hz03YtAWRm2qtYy
 DK4cH/0dYWI0ihku3p0ukvgYSyz1FdIERiU6wF+ITgkqMpsgH/cIH0dLee14pzzNc0Hp5lixf
 D0ESAWP77evfbExfsIBrGanlAss88veP0LBUnrBFp6PKuj8+0pS9HYV6R6xLRMqkt5wgMwNUx
 fjixAb8HlAMtaBsQmvUN+dLyKPBiFyngj6vGOjIDNFCUIUV6ao1hmghsOPnnfdmbHxO/B7/at
 EBCl7jFBecKCoao79JaQPTyxYsBG3hMFDi2OGbKyyrgvStg4oNhKWErAzR30HDtVnwi9u6fzw
 3xodlno2XjgWxcx9S0khOyWhKEkZiH3fqyk9pLQazGpbzimd5COIRYBrE+Evv9rxD0wTAS/OE
 z/zHumNcIm0rG8JYn+KoBZCQDKv45SKvk9PRwIFIi4+ERqO6TmCUaR41usTqLYd89epz6ThRE
 0KbOK1d+JU1EyC3fvDVPmgrErU/XMDT0GoRcNKP2L398PgsrgZjGVWUfNu5EgOhTZB67FNo8V
 ixjwcuTZ34B8bViflafrcFgqtdODPPjRRXEyr8OQzOLTwkQOVZquqm6ljgOqa7QqIdTSHCASc
 h/PccUtd3NsBKX3ETu1jpK27cZM96EVr0hRnIesMwA9vr/GLMqfwDFbhEEz6Hk86oVf9ks0D0
 0tzVgp6FQx1RTCPaMzZB3KA2hx2rCS+SgrCJCMdvpL/af7AN6zHtr9Yu3vwIFGc4z87FuQGDO
 0Q6XgOOoCPhXqhXhM56gSXFVmbD7A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_120124_054680_D9AE09C4 
X-CRM114-Status: GOOD (  14.03  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Controllers with internal phases don't need the "ciu-drive" and
"ciu-sample" clocks, and recent versions don't have them at all. Tuning
expects those clocks to be filled when it is not necessary, and fails on
devices which don't need them.

Fixes eMMC training on such device by not requiring the clocks when they
are internal to the controller, as they are not populated anymore on
devices using the RK3576 compatible strings.

This has been tested on an RK3506 on the 6.12 branch from
linux-rockchip.

Fixes: 73abb1f16e ("mmc: dw_mmc-rockchip: Add support for rk3576 SoCs")
Signed-off-by: Alexis Bauvin <alexis@bauvin.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index a134be59601d..d3158ab05aa1 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -354,7 +354,7 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	int middle_phase;
 	int phase;
 
-	if (IS_ERR(priv->sample_clk)) {
+	if (IS_ERR(priv->sample_clk) && !priv->internal_phase) {
 		dev_err(host->dev, "Tuning clock (sample_clk) not defined.\n");
 		return -EIO;
 	}
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
