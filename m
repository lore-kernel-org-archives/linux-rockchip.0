Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB8EC61DCB
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2026 19:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jqtJ5BllOtofwNy/ZkOKrAZFYIb33/IIoMiVbCtVuPQ=; b=wLOKVMj54i6zlu
	EtJkSAf/E1aPE2D/N1zz3hYVjWGa+4KNRGEMJVfl1CERQj3xA2F2EZD6VXYeYaieRY9M6qztsU8Yi
	vTjlOmFzO98IcvCcs/dSrIt6ks90vAkf0AyRlf30W/ymxkCHsvvDNhAJa/Y5aJYdxy+QtlKlFN1wg
	QcmE8WiL1GzB99eK5FrkvOGA43YiJEDfkN6VYGAY+kxh29WeFKztTJGFSQVgoFgL+EfDREX3UWIqa
	1hXp2peaoXwgJFzOU/N4rkkB3Ht/AomiIa8sbXN4fWMLpK4s2VFc/jnhggDZqzag79g01ogTuBUiH
	LLnfANNw8J2CMwY95qmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0Ouc-00000007G8N-0tLd;
	Sat, 29 Aug 2026 19:40:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0OuZ-00000007G6R-3kMn
	for linux-rockchip@lists.infradead.org;
	Sat, 29 Aug 2026 19:40:21 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67TGxpf61743620
	for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2026 19:40:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=dC2uPKn7Bz9c3JOaJ4q3xOJQPSlGj7uAtT4
	3qOT5EtM=; b=BPBsudnOUJX+AFr950m27W/F0f49ufZHGY5ky5OUJd7wOg+094e
	hObU4ab9EfnxjPUNAGKKd8k2yAIbwNGRNw8+lJMgbd85J+jNjQRyzmYvqRamXPzt
	vKX4c/5GDNuREoQ1VW6OBFscl6G3hvuCgQj/qmqKv57FNC5YHtqnPg60lMc1XvuY
	U7d9cJNiTqc3LjIr9KEVPVXIZowVWE0tpSMlkwgJ1WPMUYaSaYq4IxuBVhHFnpm3
	IlbUK2J7pYSVJlOO4v5K3ubRsOCtaOlFdCKUty4B6w7e0XFGt6pp8khgZEFktKKB
	B3YfpOdTvApkurs1fJPoNNyMorSyR8ZS1Jg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gbrq81g3h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2026 19:40:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52f52ccd459so32130101cf.1
        for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2026 12:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788032418; x=1788637218; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=dC2uPKn7Bz9c3JOaJ4q3xOJQPSlGj7uAtT43qOT5EtM=;
        b=WMId6JZL7O8TQOmoZgqALA04E0n/JuLe0UEQVD1tzTtHfv4siunVTWEpHlpUqRswN9
         J9ACvES2gqa68unWGj3WmHmFUyCM/h0uoqTVJBZpL7jp4pnRxOoe3Ecyi1dz7AQyBlFw
         02UuHbdtfcEpNc8TC/OByNvzPDPA865WYE9aTiN+vj+w7fanYjbrvhq59lmjWe/Ke8JO
         J+Nmt+IkQkho+e/qe8BnRW5Xv2AmSegFBskFZ1xghGUmb9J4L3BjCd0Mn9YRB6sb8/Lf
         bgi7PzwGWL88Agw2P2MQPpJFIKFxAcoOY3rSCR2wKML8RO7WlQnreGLQzFpvoFDCo1tY
         jo2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788032418; x=1788637218;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dC2uPKn7Bz9c3JOaJ4q3xOJQPSlGj7uAtT43qOT5EtM=;
        b=WZnyC8q9L1a33CAnJ1+rKr57aoSFNu8hBsHdcwx4aqJ+Odg1GpIGxQJvY95bHUuswJ
         38quSj1fDVLhOv7Wlcyvy2mojOLzo+/0EpWrLcSAS7OUf8t2M6TGTq2DccX/0NvntHDd
         OLAdvNPrLAknfSRIo5PYcgzyrZTyjJpvyW6zT9uOztUWXH2vhEwgykcW+BRNsWcKF5jr
         JOrPRRqc9iKxa+eOeJsHVKGiuYULiO/6RYYzEkOp2mnUxScxpmTPpHHr8SkkN6jMLSQi
         2xuTaFLD53j5NLQy8fsuYfUZZf3y6BdbW2L+Zi5a8WM9tOW40L8DDevDcNl0byHpVTUC
         jrAg==
X-Forwarded-Encrypted: i=1; AHgh+RpbjpfEKhwECSASvFpqx71T0+gzJEPyAlsu5pmiA4kya8Q2mEI9Y+7QY7Hl1oLm21PHfg4yrrR6S3TUFOL/7w==@lists.infradead.org
X-Gm-Message-State: AFuF++lUL/DPy7SJvti9Ntaa25LE3Bc3+Ywos9uoj9BRquEvZwEe3ES1
	9NuZQHDfg4bm+0UYxW9VYcgFvYVMw54lPsfA4LmHdAxeOuLgpv4pUM5glBUwPlv3LAy8pVjnA0Q
	3x7HmJNEq2s5DV3suqNIFvHiR04tXd8X0aBYNUoRgtpF7Y6uTDOttMMpEqo/HkAO3ik34hIKjJE
	4=
X-Gm-Gg: AR+sD12AeP/G5fMEt5F9wUvolLYRLz3e8PQkNdICEMvtFqtHeYrHIwwUua5iOHx/P0B
	sBT4O6w/0QGyFSZQ/Id60W32uZDAHTVKiFOlFBRAoAeCx/DnThZso7WzDERlDzfcTg0jwTSDsDj
	uXp4UEkZfGYKGS439X7ljA49odvRHX+FeaTK+gx+RVeOLMPd34Gehi6OBG3M2VVRffhbqHZSO7S
	7tpeizbGHtb8KWRGHg4MAmHV1+kXiKPGAHLK1wVGoeMU6bzIsM8GivBFO1t3L1NMZlBu0n4BSCI
	qcPyL7YMTPuNmIbOxJANa0pwYP0oYhqwdgKb+ateif+RsUnkIr+WQUsfzaX+tRKMzg5NKUn2bVt
	D74H7MnocMw7l+Sg=
X-Received: by 2002:ac8:5d48:0:b0:52d:2ddd:27c with SMTP id d75a77b69052e-52fb95f60d6mr206700591cf.31.1788032418483;
        Sat, 29 Aug 2026 12:40:18 -0700 (PDT)
X-Received: by 2002:ac8:5d48:0:b0:52d:2ddd:27c with SMTP id d75a77b69052e-52fb95f60d6mr206699991cf.31.1788032417790;
        Sat, 29 Aug 2026 12:40:17 -0700 (PDT)
Received: from quoll ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b95013d06sm212416845e9.12.2026.08.29.12.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2026 12:40:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] ARM: dts: rockchip: rk3229-xms6: Replace spaces indentation with tabs
Date: Sat, 29 Aug 2026 21:40:13 +0200
Message-ID: <20260829194012.107758-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=PYY9YRoXwVt9ZtCr2VOyzXNfCWWVJTDZHV8PRm29vsU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkzWcMqWLs/zgfHWLjLhZJLNAx4ncT4EVpq9rf
 nxmpuXChd2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapM1nAAKCRDBN2bmhouD
 1/BQD/4sChCgMTqvyxUFlH7n+eaT665GUPdiOe+/Fi6nOuSPR9nbymJM05DyfaeVmG2KN+h7GA2
 APORSPp0WD+fzr4cP3LUEPvHvMGXfDH09KmavTDHJvOtqQ7RbiI740fKMMfC8SrY2T84s+SPN2/
 DCs8Och04ySRJE4NjOaMBCX7axazvucNs7G1Nk6lHemzNEKM9IbOM1Q7dpl3u0RMd+UUf+M5kCp
 RfHbpvhjQ8gAuqrKlJrwruhT+EdpWa3will89qC+GWjF62vMZxlyZzHxnUFGjIzUAIxdIhi0kkG
 VmMbzbAsmeo0CivgbQz0j3XSUzR2BucPg6ahSjyR4/ZQLR6D2K4kT/XWEool9WrCK4WQo1fEm/3
 Q0sdMLTKxyXcMXMc0Ps7oKmMX3S3nN4+ZVjfri59POt2xMugbofUaAeQzuIjiwqh8dt5WdfC0G8
 vIjKE8aO4UnhLgDKJ5lE+0cIS3VGJbeCOXrvPtLt1z8zg7zjX7kzecgJhWJpIIoonVvVcVIyrp7
 LfC/ZxdcdL5dPVtFWlPKViMfT+E6p2Tg/Ev3qWqEQn4BsJT+Z88f3l76RG0+OUKcbSaZhSwPaM2
 wGBGGi083TilyFXrDjR+c0mq6Mbbn4b5FmIYIdxjeR8McUVQhu82WG1s+RbfidzXTp5htwhy+Hh QepFMOx0wX6md3w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: Dg8O3J9gMdC4kEJDjqyIvim0y8Bk8cl6
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI5MDE3MCBTYWx0ZWRfX6l5nsoPLhQaJ
 gYhFDXIPfeNbUNhNK/QnQpSvQcbzWImcuPQ8oly9e7bXOjb3L9nkH+e3NBTKqiE2OXdFsdA4gI9
 Gp6qi+3E4zhwwZ6uRW9JyOJ3jSUDDvE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI5MDE3MCBTYWx0ZWRfX+z/sMXzDcC+A
 7p6GM0wJh6ThDk/1/++2B/iFgPsIu6BS2mzD3xz8uANwg+xC51AeOEccqUhojZsebZsUavfxCub
 Wx2tTvxRf9Rvk29rp5m80ESKYShcE8PQWBBBkFaYc6orvvhEtVI9fMUXWEF+5PThRlbO/+m5RwQ
 eiblFr62Fh6V0KxKFWp15j32xosX9ShDqmgDzjA/8Rkmca6YNv0GFP3XqqsvFLoyDiaPUKZXzKn
 SSPwsrmHxMBbGp4l9wFxsXGfBbLvySuU0dAxHFgNRA4SgT9t3b1lETJaQqpQywTukv2ENvAdmPd
 WaXNvPrjwxilhtRmhDjcQvoErpmbhy1gY+rsHtbfIqCyyOTC6zivNWoCjYV92mbYG/yS4DePEdn
 23//OHGeLHLVW/x79FixUjqTYS8875WUGCrQ7SMEv6WquYECYGZDIEpbqtg7Q7nI/f4t9PSlwvq
 PxYWjcLMzHowVZR8qiQ==
X-Authority-Analysis: v=2.4 cv=ZOPnX37b c=1 sm=1 tr=0 ts=6a9335a3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=Ta6ShJ3tCWu1s0TIFCkA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Dg8O3J9gMdC4kEJDjqyIvim0y8Bk8cl6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-29_05,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1011 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608290170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260829_124019_928776_FFA9C268 
X-CRM114-Status: GOOD (  13.79  )
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

Replace excessive spaces for aligning indentation into tabs.  This will
be reported by dt-style-check ("[mixed-indent-chars] too many space
characters in indent (more than 7)").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/rockchip/rk3229-xms6.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3229-xms6.dts b/arch/arm/boot/dts/rockchip/rk3229-xms6.dts
index 28333449c43a..6fd3e61c89af 100644
--- a/arch/arm/boot/dts/rockchip/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rockchip/rk3229-xms6.dts
@@ -48,7 +48,7 @@ blue_led: led-0 {
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpio2 26 GPIO_ACTIVE_LOW>,
-		              <&gpio2 29 GPIO_ACTIVE_LOW>;
+			      <&gpio2 29 GPIO_ACTIVE_LOW>;
 	};
 
 	vcc_host: regulator-vcc-host {
@@ -163,7 +163,7 @@ mdio {
 
 		phy: ethernet-phy@0 {
 			compatible = "ethernet-phy-id1234.d400",
-			             "ethernet-phy-ieee802.3-c22";
+				     "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
 			clocks = <&cru SCLK_MAC_PHY>;
 			phy-is-integrated;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
