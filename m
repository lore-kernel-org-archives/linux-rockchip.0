Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0953AC02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 10:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=26idGKmDFBzaIcssQUE9S4vy10TmWSOghNYzQATvXjs=; b=Wgz5urpQI/o/F5
	ePnH6zNwSTw2DEimcKr9m7A48hLUQehvGfVjwi2NLMJtg/8WpsfB0C50N6hK06yUv+CxFqyngPmXK
	2CUl3ZRPsdjsJ323Up8cUWqMjLge2m77J3DFzRQB8MftMTFXlRHRmOTkIKNFdcCG6Vg9U7gB/Z+f9
	b7CqHGPjFWuKzu7BaC/5Z6tO+o5aQdL3wnU0mHFIjGHvujBLyIHGqGFrMs5+c17H4Z14dcZCe2C4Z
	TaofU2g7W80F4ng2FZWw+ogr9+zzu/lCzblsSdEnUhfVI+b9n1jLc3ks/MW5QalSZn3XhFhWPba4J
	gaUNBq6KUWV1nviyGTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfyi9-00000005vT2-0Xeo;
	Thu, 06 Feb 2025 10:02:17 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfye5-00000005uKa-0VUB;
	Thu, 06 Feb 2025 09:58:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E+XKtyn5aFIdrAIU0KPp909LejvLfyptDk0LsUgQtg44w9lw5skMhXcZ3fHWCUNDgFoGb9/rZ15hHdt7TwSQ+gU6IUo2QtwWJXNDpaXgeYPDBwLRdAL+1w9L9g28Bl6l28FY4W2l7Waei4uvc1e2ta7+vvxSzSE7Hlcw3NTuFhJI0KkLG0sZy7kV5nZvPQ4oklLVmj83oNSL/dQnlLFbZrjIwGZBtUxxHWtgNVc1NGH1WGNVdBSpKEoNJci5XK4f1UL9bk6ilTGzvLMSoXpAejzMlmlof6pY75F/qQNhlpuA5YhooMprvskONEXS44exiFRk/BQJasSXg0pBDke8lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TnAEkAH1nFAtDYWTkkzGncJ8UZMiWkN/uK9DDdd9YNw=;
 b=t+4VnaCVJyaZ1SIgbaDKZhMdeQKTiHXmPm2uymtXFjH3J+qO+ZoUwgx1YtRKxUbm9wfZBaM4E6iUCjWbFqzYoa2ZnTd57V12T7ntQeudlTr4RhWrCm8SKLvTq7gyx7Lpqd6kv4rPPlAmzMUS74IqJuLwHD7SzciZDfu8Ciz+eCGsIk0ctvaoTUQZxyxPOZIiOQCCCxaWnykn5kLu1ZlS2cIfyciYGTwOsw6MX/5HO0x3ozsjsd9PSoT4dCNGzU+1kmk+fwMY/EVFlsPqC5JljLzy0pBHf6oaXGdr2DzRX1pBY7+2tLDk+wIx/xa5nnmPIIHC3EWfS75bsNRQno8vpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TnAEkAH1nFAtDYWTkkzGncJ8UZMiWkN/uK9DDdd9YNw=;
 b=hwAGMkaIVysmZ1jxRh+EVoLUzUf//t/adRLzz5z6wS6yprcpg+/45rngDcsgQLPOJYLsmN8EaoCVQAdzPx2htMSPG9e7JaA3wQ32kO9FBnysUhOpL+thhjgVUUVXAprhO+brA7TxGvS3pIx+txRoGwmv4hx/blZhDC4ZqmUMsWc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAWPR08MB9591.eurprd08.prod.outlook.com (2603:10a6:102:2ef::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 09:57:55 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8398.025; Thu, 6 Feb 2025
 09:57:55 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v3 0/7] media: rockchip: add a driver for the rockchip
 camera interface
Date: Thu, 06 Feb 2025 10:57:38 +0100
Message-Id: <20250206-v6-8-topic-rk3568-vicap-v3-0-69d1f19e5c40@wolfvision.net>
X-B4-Tracking: v=1; b=H4sIAJKHpGcC/4WPQQ7CIBBFr2JYOwYGrNSV9zAugIKdqG0DDWpM7
 y7VxI0xLt9M/vszD5Z8JJ/YdvFg0WdK1HcF5HLBXGu6owdqCjPkqDgih1yBhrEfyEE8yXWlIZM
 zA9jaylDXuA5KsZK2Jnmw0XSunfMX3zYEWch5N0Qf6PZq3R8Kt5TGPt5fR2QxT//3ZQEcsNLci
 GAqxe3u2p/D+4FV50c2izN+ZALF5rcMi8yKRmkdnOON/JJN0/QEgo5O9SwBAAA=
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 Mehdi Djait <mehdi.djait@bootlin.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738835873; l=6525;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=63ITDtD8ccrrm+YlQdkRosqBVO2iTPZWu7P7uhReQDU=;
 b=dsUz0LMy5k0aooXD7NqLbUC1ZBoHAzuUAvSL7Naqk2pM78shN1MpaXnaFt9IR7fbW/sMI2Sjl
 OOh5JTn7gMAC3HrcgF85T+ZHNCcP4u//g4GQ6NAsj9lSoklUili5V8H
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: FR0P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::16) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB9591:EE_
X-MS-Office365-Filtering-Correlation-Id: 66a5b39b-b834-423d-5c5a-08dd4694ba71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|376014|7416014|366016|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ME1GV2h4NTZSTUVVSktIWTc4a0JLTlpuV1JiRUtrdnVRWmw5aVpqQWdvMzFa?=
 =?utf-8?B?SEJXdWs1MDVrSVM3eXltV0lZbVQ1MEpqQ0JDQ1V6MXNRZ2ZVaVlLSUZVb1Qz?=
 =?utf-8?B?YkFoUDkvNUpVbEd3eWJMUWcxVmtPVXpiMGhpd1cxaHJsR2E0VVgrMVk3d2dr?=
 =?utf-8?B?cEg0N0dyK2VrcWN3QXZWSXdkRXpUWURRRDFSNTh0WTBXQzZiTDlnTHN1Z1o4?=
 =?utf-8?B?UFNKQ0ZTSkVidW9HemhHbGRpbVZNam96UDh1N25oYnU4SFE4YzliQUZYbEJP?=
 =?utf-8?B?b0dTZ0c0V1g1Z09jZmNxc1FqdzFTeVN4Wm1KQUJCSDRCRUhTOHdDOUYyZDJl?=
 =?utf-8?B?R3hOa2ZtOUVPb3M3RmJ1UFdEeEEvbFVuSjRMRmhsWnMrUXRPTWNoY1lqNENE?=
 =?utf-8?B?cTM2TkRPb21PUGNmVnZKNnVzSStUR2JVNUxRV2k0eHM4WDFqUm5Ia0lHU3o0?=
 =?utf-8?B?SlFPVk83Z3UxZ3lpSjl5aGJBcEZtU3BrT2o3YjBad3BBaUI4ckxQbFdOZ2J1?=
 =?utf-8?B?bndjRVJmTlZYTmZmdW5Ebm5nZmJPY25GNWJSclFUL2wzclM2QjA1UXo1OU5k?=
 =?utf-8?B?dm1ydlIwMlBTMjNIVU9ZWG9haE1hdVhFY3pIMnZLZXZUY0ptTnVsbHNaa0ww?=
 =?utf-8?B?TUhZdFRJZ3dNbm0wT0RNQUdLQ1BINVV1WkViVXBLckt5NVZBdFIweW5lQmFw?=
 =?utf-8?B?OUg0dVhqak82SHdPUDdXSytDeFpkM2NzcVZrY3JRVWE1djFPMHQ5UUFBcEg0?=
 =?utf-8?B?eXdub0hQR1hXNEc3WnRCLzBvMmYxM2tmSU9lSEk0WUg3S3dKZkMrMUh6UjV1?=
 =?utf-8?B?VEFIK09lT1Q4T1hRelNmRncvbUFkYUtWY1A2RFlYTjJORzU3dnllb0ZrTCtR?=
 =?utf-8?B?dWJkQVpRaEJxOS9BMmY1ODdjQ0YwcFl4a2oxeGRKQVpuQ1Z4SnAyWDI4TTcr?=
 =?utf-8?B?VnhTZTdlT2VPSnNReUlxTjFqdFFrWWhRSGQ5eFJVS25STXliVHAyRWxtRlBP?=
 =?utf-8?B?Z3k2YVRoM3JSNC9xa1dOT1pQMWlSR3lBTkM1K0pJSVppY0NlQjdVd0dYYy9I?=
 =?utf-8?B?OTNxLzR0a3A3UFlRT0IrNXd0V0crcm4ra1IwTnhXRUVOeElWOENwWDFPUDM1?=
 =?utf-8?B?S0JTQkVtRDloZE9LYnlmUXBvSktJZmJFZ3cwVzFISUNlN25CTE1XaTdkR2Vr?=
 =?utf-8?B?dTNMdFlIMVNVTDZjSHp1Y2NYTVFncEo0UGs2YlVCVy9qM1FWL2JyLzlJa29W?=
 =?utf-8?B?WC8wbENRSWRIOTllT3hpNjFqNDZ1b3V5QUV1M0hzTlRjNnRKc0szOENIM3U4?=
 =?utf-8?B?RElkTFdNK3p3RlR0V2tFR2t5QVQ4N1pTZjVLQkIzVHFIY0wrQm4zL3FhczhQ?=
 =?utf-8?B?ZmpoVVB5VlhBaU9FSmZUajFJWFRQSEFyZ2hPSVNFQ3RMbFhQbjFBYUpaWHI1?=
 =?utf-8?B?aHpPK3RtaHhTcVRsRVZHTFRHV0ZHYWFMWldNU2NyMkxuY0pzUWZLSHpPbnBU?=
 =?utf-8?B?a3hIeWRBVGhzSGFNWmI1dURqRkk1eGlkSWlBR1VQbjV0WE4rOGJ5dmhSRnk3?=
 =?utf-8?B?UnpRYUp0NWhVcVlyRnhsUld5ZjhqZmloM1BhU0NKVnZLbStvbDVJb0JKUmMv?=
 =?utf-8?B?V0JMWmsyT2lDOU1WVEVwTVpIQ0FaSW9HdU9qbEUwakNTekJmaUZXdm9ndzZT?=
 =?utf-8?B?Ly8xajNEdHRBblo2NmVKaHltV0ZZR1BXbE03dTFXV2krTy9SbUNNY1Bkay81?=
 =?utf-8?B?cGFsVk05T1hhcVpnQ2lmZEhlLzlMU3lqL0N3K2VTalROQzl5YXJuUHU3T29C?=
 =?utf-8?B?S2E4bGlxdUZmT1lMcWg4TmRRQUxwZHpCaHFZWHcxMis5dTM0bUhUdEtmTHFh?=
 =?utf-8?B?eXoybGNWUFlMSkVlQTV4ZmJDeXJTNnI0WVJiNElZYzE2VSs1TDZJYnRnM3cx?=
 =?utf-8?B?VkhQYS9NTnFEc2lwL24yTVhJcy84TlVyVlpCTnVZd05reWYwV1ZqcGYvbmZG?=
 =?utf-8?B?RWN4UjJiQzRBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(366016)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVNwbWJMOVB2b2FWVlFURTlKSEdtVDUzOUFPMzdtTVhUbHlOdUYvNXR5Qk1K?=
 =?utf-8?B?bXZLRjZuanNZMVEwME1DTDhEcmlLQldMZWFtOG10VkdMQzV1ZlhaRm1qTlZR?=
 =?utf-8?B?cUhCbkY4SVF4VGJGcDZJTng4YjFnNWVyNUsrZTU3aDJIbmpUN2Y2aklkZ0Vn?=
 =?utf-8?B?cnhvSjdmc284Tk40MnV5bkNLdWowMEZDTXF6cTZ3L3k5SDlVMUNTcy9SNnQx?=
 =?utf-8?B?Qnh6TGJYNjJuMDVwT1B6MDh6dHJQTmgrNTBXVlZFcXVzVzFDMkhDUVVSQXV5?=
 =?utf-8?B?MGQ1WHlPb3hNaHAvZGNkNCtVL0lqREJHMTdjZHhqU0FTSHRlY2hGdEtKQkxG?=
 =?utf-8?B?cEZUYWFmWFF0RmNldTM5OVdUVER4LzNQNHhHZXBuS2FBYTk2aXJjTldUQk1n?=
 =?utf-8?B?Q0ExVmhubzlGcTlVQ1JpR3RjYTZuVUd1TjFCUTRwczV1b1prdHhnRFg5b1RU?=
 =?utf-8?B?QjUrdVhQOXZ0QjBGLzgzSkR4ellkQ0tRdzJyTU9CMVo1eDV2NEdoMFdDMEFW?=
 =?utf-8?B?RlEzRm1udkhJTzN4N0xjdk8xT3ZaNkRGc3NNUkFSNitsK1oySW1qTUFibDhM?=
 =?utf-8?B?UDN1YTg1NVlRN09LaVpVTXVtakI5RVFJSnJJcXBGaUxodGd5cG9LYVVGNGQ4?=
 =?utf-8?B?TjB4N0tyWXBUMG0zRjkyMzNpd21EUGpQZFBnNloxY3B5emhqUVVVUytsS3Zx?=
 =?utf-8?B?alA4dmxjSy9WOTN3N3JtRU9SbXQ1WlNObUdWbHQrWmNlcW1DQk4yZGFzT2xh?=
 =?utf-8?B?dllMbFJEc2k5WEppT0RyR0NBOFpUc0h5RFU5aExMRGRYV3Z1ZzhxVGd1T01F?=
 =?utf-8?B?NHBDMkhaZ1FQTWVjNUgxSjNpaHdURWx4QnhtMlRnaUFzZExpdlRpQUx4RmtL?=
 =?utf-8?B?c3kzUE5NeXNyZWtnTHovQUcxaEtOcEFFOUtkUjBVaDAwd1E0Rnc5eUgybWYv?=
 =?utf-8?B?dlFodmgwOXA3TTBtNnZVTUFoVnl1cFN2bU9VdkZqaU5seG1hWVdQNGUyR0xO?=
 =?utf-8?B?eGJ4QTRPNTdYOEhMdm1xZlhVZUJaN0ZuYm4zd1BxQzYvdVVBUE45TzAwWmlq?=
 =?utf-8?B?TERnd3lZVzlPWWNwRjVGdFBtNXU3Nlo1RXVBUmtmOGNlUUYrVW1zRFFVdFAx?=
 =?utf-8?B?cmYvMkEyTmNXaERSZDhPaWd4N1pnckVUeVRiNEtER1lOUmdMMUlTRThwcFFX?=
 =?utf-8?B?N0dmRzhGYmpYQ1dkMklET1NwTlJJQjZIS05oWVJzbHVSaEppZDl2YVk3ZlFF?=
 =?utf-8?B?NU9Hak5lR1pBVWRFWmZOWmJPeGp3NkN4dUZ5WGJPS01UZFY5TmhmVjQ3SmVJ?=
 =?utf-8?B?U3hnNWRlS3A2UE5LRWFCenNzYXMvSVQwby90Z1MweVZManorOXNEUTBaQlFU?=
 =?utf-8?B?ZzVFUzJOSDEydnkyaFlzV3JMVGdKeEYyMUMvK2VJbm5vYjhGWGIrcXBlQTdF?=
 =?utf-8?B?RUp1K0k2VDdydHR1M21DNFZCNDVqTUdvNE0yS1NVc3V5L0lYcFlYV3FQRTRE?=
 =?utf-8?B?MmVzdnZQUHlCSHdleWsxb2NCdXdySklHN0dIMTNINE5RTStCZkxjQ0tnS1hm?=
 =?utf-8?B?QXoreUx0M2gxb3lpa3YxWGZ5ZXI3ZFhvR01MUVpFZVN2TVBKc0ZYZUt5MlNq?=
 =?utf-8?B?Ui9UU2FzUEpISXRBQ1gwVVhkVE9qYVkreU9ITmdVekdHUW91ZXVvay8wMlFx?=
 =?utf-8?B?b3RMVWlWZEh5MFRhWlVZTkxpMElBd1VtNE9BZEIyWFN5anhoek8yVzFkbHVx?=
 =?utf-8?B?MFBlbDdMeHhRNExLZnJZS1lxMXFMeFlSczIra3VDeE51MURvdDUrR0t5Z2xq?=
 =?utf-8?B?cFduL1N0YVZaTStXbFNudk00S3p1N3R1NnFCckVtYXplcVR2Y2N6TmdPVVNs?=
 =?utf-8?B?K1ZwSS91dmsxU0x4dE9vT3ZnUXNzZXE4UXFSRVd4SGJmQXRCYjJ6WnNzd1ZG?=
 =?utf-8?B?L1J3RDFCM3ZtT2dPaEVReko4MnBTMmRYNzdnb0oxam55RmVqdDlLQXpvb0Vw?=
 =?utf-8?B?Wk9DZ0YzenM4cVUzeUh6c2pGaExWWmpNZGszTUhWMzVSR3hPaFlTRFMwY254?=
 =?utf-8?B?MWVWMUlSb1Y5bGFDb1ROQzFGRU9QTnk2eG4rU2haR1ZVM21YT3o4Uko0ZTNF?=
 =?utf-8?B?WitTOEVKc1cyQmcrM2dId2JkVEVHMzNxYzZCUkFDQSsrMlROc2hnRWFGWTAv?=
 =?utf-8?B?eWc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a5b39b-b834-423d-5c5a-08dd4694ba71
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 09:57:55.4813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GjDGEo9HIr4LzOvpvrlSSEJel1LxgS70pCWJv/dmnQm1zvDU0U2YjI6uu4136bceVJW+SyUqDEZT7Xcojsv2MHeaoY5OwYBzQUNELHLe1AU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_015805_313451_7B48CDF5 
X-CRM114-Status: GOOD (  15.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGFiaWRlcmUsCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIHRoZSBSb2NrY2hp
cCBDYW1lcmEgSW50ZXJmYWNlIChDSUYpLAp3aGljaCBpcyBmZWF0dXJlZCBpbiBtYW55IFJvY2tj
aGlwIFNvQ3MgaW4gZGlmZmVyZW50IHZhcmlhdGlvbnMuCkZvciBleGFtcGxlLCB0aGUgUFgzMCBW
aWRlbyBJbnB1dCBQcm9jZXNzb3IgKFZJUCkgaXMgYWJsZSB0byByZWNlaXZlCnZpZGVvIGRhdGEg
dmlhIHRoZSBEaWdpdGFsIFZpZGVvIFBvcnQgKERWUCwgYSBwYXJhbGxlbCBkYXRhIGludGVyZmFj
ZQphbmQgdHJhbnNmZXIgaXQgaW50byBzeXN0ZW0gbWVtb3J5IHVzaW5nIGEgZG91YmxlLWJ1ZmZl
cmluZyBtZWNoYW5pc20KY2FsbGVkIHBpbmctcG9uZyBtb2RlLgpUaGUgUkszNTY4IFZpZGVvIENh
cHR1cmUgKFZJQ0FQKSB1bml0LCBvbiB0aGUgb3RoZXIgaGFuZCwgZmVhdHVyZXMgYQpEVlAgYW5k
IGEgTUlQSSBDU0ktMiByZWNlaXZlciB0aGF0IGNhbiByZWNlaXZlIHZpZGVvIGRhdGEgaW5kZXBl
bmRlbnRseQooYm90aCB1c2luZyB0aGUgcGluZy1wb25nIHNjaGVtZSkuClRoZSBkaWZmZXJlbnQg
dmFyaWFudHMgbWF5IGhhdmUgYWRkaXRpb25hbCBmZWF0dXJlcywgc3VjaCBhcyBzY2FsaW5nCmFu
ZC9vciBjcm9wcGluZy4KRmluYWxseSwgdGhlIFJLMzU4OCBWSUNBUCB1bml0IGNvbnN0aXR1dGVz
IGFuIGVzc2VudGlhbCBwaWVjZSBvZiB0aGUKY2FtZXJhIGludGVyZmFjZSB3aXRoIG9uZSBEVlAs
IHNpeCBNSVBJIENTSS0yIHJlY2VpdmVycywgc2NhbGUvY3JvcAp1bml0cywgYW5kIGRpZmZlcmVu
dCBkYXRhIHBhdGggbXVsdGlwbGV4ZXJzICh0byBzeXN0ZW0gbWVtb3J5LCB0bwpJU1AsIC4uLiku
CgpBZnRlciB5ZXQgYW5vdGhlciBtYWpvciByZWZhY3RvcmluZyBhbmQgcmVuYW1pbmcgdGhlIGRy
aXZlciAiY2lmIiAtPgoicmtjaWYiLCB0aGUgdjMgb2YgdGhlIHNlcmllcyBub3cgYWRkcyBhIGJh
c2ljIG1lZGlhIGNvbnRyb2xsZXIgY2VudHJpYwpWNEwyIGRyaXZlciBmb3IgdGhlIFJvY2tjaGlw
IENJRiB3aXRoCiAtIHN1cHBvcnQgZm9yIHRoZSBQWDMwIFZJUCAobm90IHRlc3RlZCwgdGhvdWdo
LCBkdWUgdG8gdGhlIGxhY2sgb2YgSFcpCiAtIHN1cHBvcnQgZm9yIHRoZSBSSzM1NjggVklDQVAg
RFZQCiAtIGFic3RyYWN0aW9uIGZvciB0aGUgcGluZy1wb25nIHNjaGVtZSB0byBhbGxvdyBmb3Ig
ZnV0dXJlIGV4dGVuc2lvbnMKIC0gYWJzdHJhY3Rpb24gZm9yIHRoZSBJTlRFUkZBQ0UgYW5kIENS
T1AgcGFydHMgdG8gYWxsb3cgZm9yIGZ1dHVyZQogICBleHRlbnNpb25zCiAtIGluaXRpYWwgc3Vw
cG9ydCBmb3IgZGlmZmVyZW50IHZpcnR1YWwgY2hhbm5lbHMgKG5vdCB0ZXN0ZWQsIHRob3VnaCwK
ICAgZHVlIHRvIHRoZSBsYWNrIG9mIEhXKQoKVGhlIHBhdGNoZXMgYXJlIGZ1bmN0aW9uYWwgYW5k
IGhhdmUgYmVlbiB0ZXN0ZWQgc3VjY2Vzc2Z1bGx5IG9uIGEKY3VzdG9tIFJLMzU2OCBib2FyZCBp
bmNsdWRpbmcgdGhlIElURSBUZWNoLiBJVDY4MDEgSERNSSByZWNlaXZlciBhcwphdHRhY2hlZCBz
dWJkZXZpY2UuIFRoZSBJVDY4MDEgZHJpdmVyIHN0aWxsIG5lZWRzIHNvbWUgbG92aW5nIGNhcmUg
YnV0CnNoYWxsIGJlIHN1Ym1pdHRlZCBhcyB3ZWxsIGF0IHNvbWUgcG9pbnQuCgpIb3dldmVyLCBz
ZXZlcmFsIGZlYXR1cmVzIGFyZSBub3QgeWV0IGFkZHJlc3NlZCwgc3VjaCBhcwogLSBzdXBwb3J0
IGZvciB0aGUgUkszNTY4IE1JUEkgQ1NJLTIgcmVjZWl2ZXIgKEkgbWFuYWdlZCB0byBnZXQgaXQK
ICAgd29ya2luZywgYnV0IHBhdGNoZXMgbmVlZCBjbGVhbnVwIC0+IG5leHQgaXRlbSBvbiBteSBU
T0RPKQogLSBzdXBwb3J0IGZvciB0aGUgUkszNTg4IHZhcmlhbnQgKC0+IG5leHQgYnV0IG9uZSBp
dGVtIG9uIG15IFRPRE8pCiAtIHN1cHBvcnQgZm9yIHRoZSBzY2FsaW5nIHVuaXRzIHRoYXQgY2Fu
IGJlIGZvdW5kIGluIHNvbWUKICAgdmFyaWFudHMKCkxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIGNv
bW1lbnRzIQoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjAxMjI5
MTYxNzI0LjUxMTEwMi0xLW1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tLwpbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvY292ZXIuMTcwNzY3NzgwNC5naXQubWVoZGku
ZGphaXQua0BnbWFpbC5jb20vClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDAy
MjAtdjYtOC10b3BpYy1yazM1NjgtdmljYXAtdjEtMC0yNjgwYTFmYTY0MGJAd29sZnZpc2lvbi5u
ZXQvCgpUbzogTWVoZGkgRGphaXQgPG1laGRpLmRqYWl0QGxpbnV4LmludGVsLmNvbT4KVG86IE1h
eGltZSBDaGV2YWxsaWVyIDxtYXhpbWUuY2hldmFsbGllckBib290bGluLmNvbT4KVG86IFRow6lv
IExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClRvOiBHZXJhbGQgTG9hY2tlciA8Z2Vy
YWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+ClRvOiBUaG9tYXMgUGV0YXp6b25pIDx0aG9tYXMu
cGV0YXp6b25pQGJvb3RsaW4uY29tPgpUbzogU2FrYXJpIEFpbHVzIDxzYWthcmkuYWlsdXNAaWtp
LmZpPgpUbzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQu
Y29tPgpUbzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiQGtlcm5lbC5vcmc+ClRvOiBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6aytkdEBrZXJuZWwub3JnPgpUbzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3Jn
PgpUbzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KVG86IEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+ClRvOiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1
ZnJlc25lQGNvbGxhYm9yYS5jb20+ClRvOiBTZWJhc3RpYW4gRnJpY2tlIDxzZWJhc3RpYW4uZnJp
Y2tlQGNvbGxhYm9yYS5jb20+ClRvOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KVG86IFBhdWwgS29jaWFsa293c2tpIDxwYXVsa0BzeXMtYmFzZS5p
bz4KVG86IEFsZXhhbmRlciBTaGl5YW4gPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+ClRv
OiBWYWwgUGFja2V0dCA8dmFsQHBhY2tldHQuY29vbD4KVG86IFJvYiBIZXJyaW5nIDxyb2JoQGtl
cm5lbC5vcmc+ClRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgpDYzog
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZwpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
ClNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9u
Lm5ldD4KCkNoYW5nZXMgaW4gdjM6Ci0gcmVuYW1lZCB0aGUgZHJpdmVyICJjaWYiIC0+ICJya2Np
ZiIKLSByZWJhc2VkIG9udG8gdjYuMTQtcmMxCi0gYWJzdHJhY3RlZCB0aGUgZ2VuZXJpYyBJTlRF
UkZBQ0UrQ1JPUCBwYXJ0Ci0gYWRkcmVzc2VkIGNvbW1lbnRzIGJ5IFJvYiBhbmQgU2FrYXJpCi0g
YWRkZWQgVjRMMiBNUExBTkUgZm9ybWF0cyB0byBEVlAKLSBhZGRlZCBwYXRjaCB0aGF0IGVuYWJs
ZXMgdGhlIFJLMzU2OCBWSUNBUCBEVlAgb24gUEY1IElPIEV4cGFuZGVyCi0gZml4ZWQgZm9ybWF0
dGluZyBpc3N1ZXMgcmFpc2VkIGJ5IG1lZGlhLWNpIGJvdAotIExpbmsgdG8gdjI6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNDEyMTctdjYtOC10b3BpYy1yazM1NjgtdmljYXAtdjItMC1i
MWQ0ODhmY2MwZDNAd29sZnZpc2lvbi5uZXQKCkNoYW5nZXMgaW4gdjI6Ci0gbWVyZ2VkIHdpdGgg
TWVoZGkncyB2MTMKLSByZWZhY3RvcmVkIHRoZSBjb21wbGV0ZSBkcml2ZXIgdG93YXJkcyBhIG1l
ZGlhIGNvbnRyb2xsZXIgY2VudHJpYyBkcml2ZXIKLSBhYnN0cmFjdGVkIHRoZSBnZW5lcmljIHBp
bmctcG9uZyBzdHJlYW0gKGNhbiBiZSB1c2VkIGZvciBEVlAgYXMgd2VsbCBhcyBmb3IgQ1NJLTIp
Ci0gc3dpdGNoZWQgdG8gTVBMQU5FIEFQSQotIGFkZGVkIHN1cHBvcnQgZm9yIG5vdGlmaWNhdGlv
bnMKLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwMjIwLXY2LTgt
dG9waWMtcmszNTY4LXZpY2FwLXYxLTAtMjY4MGExZmE2NDBiQHdvbGZ2aXNpb24ubmV0CgotLS0K
TWVoZGkgRGphaXQgKDIpOgogICAgICBtZWRpYTogZHQtYmluZGluZ3M6IG1lZGlhOiBhZGQgYmlu
ZGluZ3MgZm9yIHJvY2tjaGlwIHB4MzAgdmlwCiAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBh
ZGQgdGhlIHZpcCBub2RlIHRvIHB4MzAKCk1pY2hhZWwgUmllc2NoICg1KToKICAgICAgbWVkaWE6
IGR0LWJpbmRpbmdzOiBtZWRpYTogdmlkZW8taW50ZXJmYWNlczogYWRkIGRlZmluZXMgZm9yIHNh
bXBsaW5nIG1vZGVzCiAgICAgIG1lZGlhOiBkdC1iaW5kaW5nczogbWVkaWE6IGFkZCBiaW5kaW5n
cyBmb3Igcm9ja2NoaXAgcmszNTY4IHZpY2FwCiAgICAgIG1lZGlhOiByb2NrY2hpcDogYWRkIGEg
ZHJpdmVyIGZvciB0aGUgcm9ja2NoaXAgY2FtZXJhIGludGVyZmFjZQogICAgICBhcm02NDogZHRz
OiByb2NrY2hpcDogYWRkIHZpY2FwIG5vZGUgdG8gcmszNTZ4CiAgICAgIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBlbmFibGUgdmljYXAgZHZwIG9uIHdvbGZ2aXNpb24gcGY1IGlvIGV4cGFuZGVyCgog
Li4uL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHB4MzAtdmlwLnlhbWwgICAgICAgICAgfCAxMjMg
KysrCiAuLi4vYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LXZpY2FwLnlhbWwgICAgICB8
IDE2NyArKysrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgOSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSAgICAg
ICAgICAgICB8ICAxMiArCiAuLi4vcmszNTY4LXdvbGZ2aXNpb24tcGY1LWlvLWV4cGFuZGVyLmR0
c28gICAgICAgICB8ICAyMCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1i
YXNlLmR0c2kgICAgICB8ICA0NCArKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9L
Y29uZmlnICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2NpZi9LY29uZmlnICAgICAgfCAgMTUgKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya2NpZi9NYWtlZmlsZSAgICAgfCAgIDcgKwogLi4uL3BsYXRmb3JtL3JvY2tjaGlw
L3JrY2lmL3JrY2lmLWNhcHR1cmUtZHZwLmMgICAgfCA4NjIgKysrKysrKysrKysrKysrKysrKysr
CiAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYvcmtjaWYtY2FwdHVyZS1kdnAuaCAgICB8ICAy
NCArCiAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYvcmtjaWYtY2FwdHVyZS1taXBpLmMgICB8
ICAyNSArCiAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYvcmtjaWYtY2FwdHVyZS1taXBpLmgg
ICB8ICAyMCArCiAuLi4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYvcmtjaWYtY29tbW9u
LmggICB8IDIyOCArKysrKysKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYv
cmtjaWYtZGV2LmMgIHwgMzA2ICsrKysrKysrCiAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYv
cmtjaWYtaW50ZXJmYWNlLmMgICAgICB8IDQwNiArKysrKysrKysrCiAuLi4vcGxhdGZvcm0vcm9j
a2NoaXAvcmtjaWYvcmtjaWYtaW50ZXJmYWNlLmggICAgICB8ICAzMCArCiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JrY2lmL3JrY2lmLXJlZ3MuaCB8IDEzMSArKysrCiAuLi4vbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYvcmtjaWYtc3RyZWFtLmMgICB8IDYxOCArKysrKysr
KysrKysrKysKIC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2NpZi9ya2NpZi1zdHJlYW0u
aCAgIHwgIDMxICsKIGluY2x1ZGUvZHQtYmluZGluZ3MvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy5o
ICAgICAgIHwgICA0ICsKIDIyIGZpbGVzIGNoYW5nZWQsIDMwODQgaW5zZXJ0aW9ucygrKQotLS0K
YmFzZS1jb21taXQ6IDIwMTRjOTVhZmVjZWUzZTc2Y2E0YTU2OTU2YTkzNmUyMzI4M2YwNWIKY2hh
bmdlLWlkOiAyMDI0MDIyMC12Ni04LXRvcGljLXJrMzU2OC12aWNhcC1iOWIzZjk5MjVmNDQKCkJl
c3QgcmVnYXJkcywKLS0gCk1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9u
Lm5ldD4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
