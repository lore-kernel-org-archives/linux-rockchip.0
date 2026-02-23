Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC2DEF5862
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 10:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pdv4ajCTj8U7LBk/Qgfpy4vC+VCRedywKX5q5npl0zg=; b=WC9822V7Hr+DH2
	+4z8lyxy5LcJTSi/7hp2aApdGgwVg+X4Xl68DW/CD1cD+VbguBPiP8wSAnIoKjnINdeYlwHj9kYKl
	V3LEndU10FZ1EgsMZSpndvtLErvCqiHi6v13UCE7W4pCPfMgYfWzZtdrkqK7u3Krz1byRzKYeDOWz
	UrfbAts8i0NW/2BRhyleFt3g3uIAaoDne1sWstylQoB2N4VysTvWbFkwrHVU9zaAFm1TUAQVkC2VG
	D/oMnKiJzBVC5axseDeLgWUEneBRelf0NIjVfqKXyCcJLLCWEsr2ujMFOSatOXXqYrAe6HyXjUqI3
	iv5M6MV+qegOgAtYI6Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTd3-000000006h5-2imG;
	Mon, 23 Feb 2026 10:57:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTd0-000000006f3-0WG0
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 10:57:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N8hSH5766639
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 10:57:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=jUC9TlWmv0obtpzoHHcT8WkjssvqQiRshIt
	uq7Tbwls=; b=LvfWpcdMprHhI2Bo7zpuR5/qRf4NuIUS7FpexbRdIVN4kuNvcm0
	Sl2rzjY/5uPjs0u1+suzqyjkPYx8Ure+n61lQXGb2WDPswxNwKNZ2Z+U4qM9iou/
	Lc0u0tw3TvZMpHCxabxgEArC08BIpTV8RhW/qzmtLEpzfqkRGgZxAmd2czhbHcNA
	xaCbyWIDYLlcDVxT5pr+IAbkIJHj8Wbb7bkGpiON7D4PG2hIge0lc+Roz1ZBvGaY
	VPusb3G94vP45nqmzSaOO/RxusYA+EGfT38G2Nm4v++nZoRFgOov2KYO08vu2kGN
	REUIv1001T26ZJVTAJ6GQzmAFC1XALJcZQw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5x7vf0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 10:57:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb6291d95aso2791732985a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 02:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771844244; x=1772449044; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jUC9TlWmv0obtpzoHHcT8WkjssvqQiRshItuq7Tbwls=;
        b=iDBkWOdOg+neqXqh/km+IIKcpNp9IN/t78kz1aOp74C2oNW+fl151C2NzJGhUWxuM0
         nj05w0E4cVk8RW/ceUlM+d/7V/939tiUJiQ+btkaNgSA7UjMimpGoh4mEeURKPKK/Ppg
         KzqEoi6q2kiKmg/Kggt5liauLOfOaXukwCX1HwfZ0No8i/LzOeHiqmMZJJpOAjZB4LnR
         To2vW3ISwtAAdZqVRj74YOZsW/oLCmdLV5pbYL0ELeeZUpZeH6TFsLdyIO1SaoqLnCpk
         hegFvlaXVuXRMXnsBTMxbn0ggXm/1e3GwEnisWoWds8bUe2Ct8gZxlIFhzLDd6b8myvM
         gWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771844244; x=1772449044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jUC9TlWmv0obtpzoHHcT8WkjssvqQiRshItuq7Tbwls=;
        b=d+MHsLQcTRRCwM6GlPWapoEfz3r5dVAXNQXc393erAcjBIcnR1egyqNNdF4C1APZHZ
         eFyr+/grkTov2/iRIavQ3UkQnb2aIaK2YWhx5cTmg+7NARW8vwMQWv25hR3HAHIHhjUD
         /P/MNPxdABotwIwk8kjJIdbAQkieear+cBueCIE7K0x1nLWsEI8TH7O+uB7Xr7n2Sib9
         Bre6B5J8sPMumJQsq0jPp1TCqqy8Pb5PD6SF4wLsscpDZ/XEYCfS0RKyZl3KN/jYQVvA
         jNszLrRLvQd1h8PDXgQoVYuHGXaQjEK8T84/VmOA4pHrKI5o+ktbI9NadIOYbh/Kscwp
         0E7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXV++XK7q00jpZ1WXX8D1ObBZflj5mCgF7lNJS11tlpWchJB809Vt/49fUnvHVuOnlsQKFWUQapYCnCXdKh5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAuyinHLtvIqVM/qLmWEPugc3oSpGEbBxpVKIGb6s+B6aLotKR
	eJKvA0fodrv7pdEW0tNCPKcYRkK5XIJ1J0T/JLh7hnaLPaupUwao6T0gngK3oANLtkGPgra4vy/
	IUyyOTFoelxHulFgWWsDFJSTtYhoWkT0wDlzX+KwOnz6yF9TgiDoyvNlSOcneZyDCcEvRdb340d
	4+6C+NoTU=
X-Gm-Gg: AZuq6aLpqI69Q9UbJ2AgB08asNY4o+7pxI9chKB4YDIQYctyRC7J6C8funiCp9RSdO2
	I42YQoeuyE30Cglnp/VVgBpHZ7wzK+aX3Ui1nclrPexYbQWuJU6+a0v6Xxp8fkmuJsZBOmOCrIE
	8jYvnDV7ZoeSWJDDn1+/KUjJTu3x64x7u5HV9Lpstp+jw2Ul37QsjcDfWZZVocOzQxNpb5NngsP
	lFkopxBqSlYFIPI4Wlr+qtMue5n+yLJVb8eKug/+TX/ox08mPvDt1PCKG3z7jbQBLFHhuQ2WInl
	QLonsqtBWaXdEiJyuMTCGiIDj2T7hQ4AjlahUpmNobFgqqPQVIF1ocLISf2tkbDDEz+i+IyslMg
	Muf7XKYrHx3ZDKasnxf795KvwCbvgNhSl267k8w==
X-Received: by 2002:a05:620a:d8d:b0:8c9:f4eb:ac71 with SMTP id af79cd13be357-8cb8c9e00a7mr906245185a.10.1771844244232;
        Mon, 23 Feb 2026 02:57:24 -0800 (PST)
X-Received: by 2002:a05:620a:d8d:b0:8c9:f4eb:ac71 with SMTP id af79cd13be357-8cb8c9e00a7mr906242785a.10.1771844243651;
        Mon, 23 Feb 2026 02:57:23 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c60bsm18140215f8f.27.2026.02.23.02.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 02:57:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>
Subject: [PATCH] pinctrl: rockchip: Fix configuring a deferred pin
Date: Mon, 23 Feb 2026 11:57:18 +0100
Message-ID: <20260223105717.48779-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1886; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=G3uoQqzwbhwMv3rHo8CzAGVUUhUj+DhmlQdTwenR1nU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpnDKNtoQe5GdE1EfxYH3cWP7j5g7W2fBZbQJ1f
 M1XdzvUygGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZwyjQAKCRDBN2bmhouD
 1wHGD/9gOeDdNWNQGaIjTJ1BjcIplUgUa679M6zz4l7YF/MEDewvDNgHyTbQGKfp9FuPF87jP9W
 yY1adjL4z9CMML1N1Q3darmmdoeiKkKlbmM3Pn5Qh825I/eQ6J9JJ5WREUrwhp9wPuLb5MOkWxd
 +IL+6P72pYU5pVecdI0qkS6KPyashiEHVmK7Z6h8K0BaavFKp6w57iCEF9AF5PCIt78C3lyNcZW
 fNRAaeXk3RF/2Zw0i+o0Br1M2MCPjQGWQS1kvm8fLGvUOLvOmM+1S+7fu59X5htauWtaITthriJ
 NJh/1UfVosuobC5H3FrzvzyYtQIipzbkc6Ply3pjEMCEruUaghTSvOudTw96+VRJzQANOLQjj4l
 RDzrz+Mlc6BUhT03htNS7oxyZ4k3iH7J7HQ6EXe/HWomB/GeBOIHpssgdQlOxDVs33SnTFnplX9
 yVqtd928i7HgQJPhggJ5x3GhHBUe4huxIcx0MthHSC/Dkq6q6XWXwas6SDsP23kElujRqAfvXDg
 NdYu4cqiD0no1pSWCitq3IeL0jLCGKWid7SILla8eJ+sR5ufRobefLmWht/Kzi6lf3Ls3rpAoia
 eNZRZ6Sn1auRE1Df8+bAqrbUHfLkTs+XVzU9Nhek3Wm8bUEFgI/uv8D+My+84RwH1SVrz4eO1fZ 6GXs2LZxL2pQE/A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA5NCBTYWx0ZWRfX36uDCogB2o/K
 Y1s4decWppqY2YnBBnEQeUpQ9Qi0xzDoDHyvHi7tlv1ywHBE5t+ZIG+P9LdHhhFz0t6oiAtR9TS
 tmpApIYAgxth8BlUREHHydTkhadRtXhDHI4H7gZzF2U/1qCqkxr4/jbuaL7CJu0tU4DZhmiwHR2
 e0HGIFTjG8OZRJwnU/Fzj8b1XUQ/UjAp6PEYsLhFvbJAmvdjWP7uReviMuNTlCBZYpcxcEnGtR8
 z2i+tPe5cx83K7FAudN7lJYT/+nMvsDHb4doVSQU+pYAAOmGhQCUKpuEhyjvZuc64vdv0UVq4A9
 v3fYNg5BvQ7fpWnv7nn3li98Ve3aA+qu3Nq8o+cXp2vXQx4W77qPyWKOY6WuShox6UKdQyPDe0M
 MnYvIthmXHh2eNqR/ulBpJ0B85lrs1m7TBIYpz5+gnNVKS6zgsytBT4OJAexABg25bRsUIho80G
 csQzGJCpC3jG1b+VYnw==
X-Proofpoint-GUID: 6NpsMSfCbzKVQwk3j_B-HRTlbSi2TmJ0
X-Authority-Analysis: v=2.4 cv=X71f6WTe c=1 sm=1 tr=0 ts=699c3295 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=IpJZQVW2AAAA:8 a=EUspDBNiAAAA:8 a=wq2r3B8GeWDWek6aAFgA:9
 a=IoWCM6iH3mJn3m4BftBB:22 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-ORIG-GUID: 6NpsMSfCbzKVQwk3j_B-HRTlbSi2TmJ0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025726_323577_26C0F2CE 
X-CRM114-Status: GOOD (  16.92  )
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

Commit e2c58cbe3aff ("pinctrl: rockchip: Simplify locking with
scoped_guard()") added a scoped_guard() over existing code containing a
"break" instruction.  That "break" was for the outer (existing)
for-loop, which now exits inner, scoped_guard() loop.  If GPIO driver
did not probe, then driver will not bail out, but instead continue to
configure the pin.

Fix the issue by simplifying the code - the break in original code was
leading directly to end of the function returning 0, thus we can simply
return here rockchip_pinconf_defer_pin status.

Reported-by: David Lechner <dlechner@baylibre.com>
Closes: https://lore.kernel.org/r/f5b38942-a584-4e78-a893-de4a219070b2@baylibre.com/
Fixes: e2c58cbe3aff ("pinctrl: rockchip: Simplify locking with scoped_guard()")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Offending commit was introduced in v7.0-rc1

I also checked few other of my commits for similar error.
---
 drivers/pinctrl/pinctrl-rockchip.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 816823403e97..4f2e02322508 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3640,14 +3640,10 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			 * or the gpio driver hasn't probed yet.
 			 */
 			scoped_guard(mutex, &bank->deferred_lock) {
-				if (!gpio || !gpio->direction_output) {
-					rc = rockchip_pinconf_defer_pin(bank,
-									pin - bank->pin_base,
-									param, arg);
-					if (rc)
-						return rc;
-					break;
-				}
+				if (!gpio || !gpio->direction_output)
+					return rockchip_pinconf_defer_pin(bank,
+									  pin - bank->pin_base,
+									  param, arg);
 			}
 		}
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
