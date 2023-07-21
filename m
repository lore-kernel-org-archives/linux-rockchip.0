Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 453DFEB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 09:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwBqgw7ZpvKBZ9BUV1zPtCqLVWDGvAPPKp+VTiVK/fk=; b=2BGcLhXeK3Gh6i
	5NboGn21IgS9RfrjdLauynJ1sJ9CLQ+iLgzJkT4dcYUGROVOySHcJ1pB+tkUB2C4aCBqdqoZys+dI
	sfyMO6IDuYW3+NtfJclTeXWkNSmmjxpvf8q8VK1hoOiRcA0ozMqdH7PUD6vLe8a9Ix55NP3Ls2YGi
	bPrfpD3c7ROXme9AW3mR4Cq1jtHuRVeuqi7i+lvPZfC1loN6d/hrEGTpmIjW38NyjjaqgcvP0FbNE
	/WYP54+NGV1O3FeXdkCGjOfL7FgxZxL0QjpErRuzNVH2roJWvnMtg2b+Cwgt9xUs2kJ4eGsd3kFA7
	ECUt0t4widswaFA2Uw5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMmji-00DaTv-3A;
	Fri, 21 Jul 2023 09:47:46 +0000
Received: from mail-sgaapc01on20701.outbound.protection.outlook.com ([2a01:111:f400:feab::701] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMmjb-00DaPb-1z;
	Fri, 21 Jul 2023 09:47:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnbokOjhOVtCzeTlxV/MiMVcrCx6WzlGT6gdTYl0h5PGmxdNB0sXlYn50aksdYEXZ8H3MndA3E9MmdDaYHRfJqZgY4SJNjjZmR1xji95d58IE9MPpADbQCkLIGOnjx5nIHIa6I9gjSjIueF8S1PA0fQCypxyXAp9x4eFrsX47x+43eWimc/tqsydCb5DseU2XT5YM21YiXzpQfROxFyQ+BSQBDMN8S1bVgI8jz8IJdGpTyY95bk2Glj+6C+EBOeuywiGj2q6O8a/n2tV9u2djp5ZSLd5agOsDEfdEzCN3mhp9snHD99s0F0XCo2f2sQQHC9Vf0/03QYx3DaB307kWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N03nusCUS3siQa14uFSaE/KiicaLWmrEtJVE7dkAQQg=;
 b=LrAHWHmEeSNXRkuD4wRPGMHsqFDa//bxSNhCqQgPah9G9LuIVRU6wSvSOx1Nn5B/5ErYkFGTL9T6jGLUJdemaSyG2hrMg8rTa7oSVktYQaKpwshkvfgaI4GVD7lIiu4aKAEB1slNkW+F/cMOhBgq9xg6s2tdu5x8yLhQl597RMzbgyzDcULqzvpyZqOnc1zCucuFYpux+3xL/aoUAzbADH3GMN14Oa1ey8W0CAdiOEJlXf3az3Syx1f7fWxK2Q485C9d7/JOXI590k4beTtGBTSwuk/5bXIVqYzDnmRWVY+k7wYMd6etC8QvHDcrmoH7qwWGFlRD+8b55DyXJBv63w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N03nusCUS3siQa14uFSaE/KiicaLWmrEtJVE7dkAQQg=;
 b=YmBKuiCviNQBuNCuzg+QTbpGCyUE+jyOIL7F3SS1ND8w3sLMMSRppFhQj3s+OfekMjh0oY0e8tpzA9/Yrif8DwJKM3wUSaudAVvj2yB6LEBZMNX9Y6/TCq1nkhksI0am6utH8ns0wRZCQ2x2C5Ff4PLP1V6+dPQzk0yA9uPVUknR3KpvNs8HK0MamPYtKiHKInZ3GVzV8em+c/g89nyxmx7V4cEmCX76r6RGWwbLrj3tV25M1QyyfyB1D8rk7khbbhEccIDWOhqxX+QKB9GosnLERamGomXYO16afyY44C1MlaUwfSVBM2NbV9cjC0SjUylPfdzqrQ6u6ecWo06uKA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR06MB6789.apcprd06.prod.outlook.com (2603:1096:820:ff::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Fri, 21 Jul
 2023 09:47:27 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b%3]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 09:47:27 +0000
From: Yangtao Li <frank.li@vivo.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Yangtao Li <frank.li@vivo.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 13/22] thermal/drivers/rockchip: convert to use devm_request*_irq_probe()
Date: Fri, 21 Jul 2023 17:46:32 +0800
Message-Id: <20230721094641.77189-13-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230721094641.77189-1-frank.li@vivo.com>
References: <20230721094641.77189-1-frank.li@vivo.com>
X-ClientProxiedBy: SI2PR01CA0031.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::11) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR06MB6789:EE_
X-MS-Office365-Filtering-Correlation-Id: 48502543-e9ab-4a7f-0f0f-08db89cf7e45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ukcEb0DILkyCxXqQHdNv7ekvSDDN/IrjTYQ6bMeJpKOdrfo8Fsk3R21A9yayXa6DM8Cgcwne+5rOH2Hk0jVOISLDX+MjssZ+416rtntKXsRVn+SFU8lHmT+gnMrh6cfa/7A1az7SDuEcbMTOBUyWu2gsmCEuB6D3+9PQ8LQRhaQ4/cglfnSfB9GOuh8P1RkxH0NbDa/76cVmPbqlJinrLysZN1sv+4aSyOVtWcYSmjbgfiv5al1AcnEiQ8JjZGsg5NddfDyacN3/VxR7Ud0J2wD+SdBA/abrOJpV3k9Q5+CR8r1zUrQBuo2IjWsaaAKWKxZjfF8KkFpEJay2J830Uvlgj9rpGbMvgukRKmBeHVBltVgzE3wRz7TJWfAeO5p5HV7+3p/BJeyr6PrJAaJx2vYuvXNFtef9iLDlRy2xOMG4M59BeXqVpJ9UuKMuWNmFagwnIKgPZ8UMlVvMjaGLlZMhqh/5XDjNplzCT9hR6GrMT/LpX26zvPFkYwYZ3fNceS6e7LHSGbwNcMYNRqNEWR6iKv+4VNoNqlLiqevBClkPhzUgGyIUqQWzE8XayPPNSBr14gPBSh4QqRm0UcKBPJVSS/Qd9Sl0Db6OvHapsDR0vDuAIAdZnF+HDDuk9Vd/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(451199021)(83380400001)(66574015)(2616005)(2906002)(38350700002)(38100700002)(66556008)(316002)(66946007)(478600001)(6486002)(41300700001)(4326008)(6506007)(26005)(186003)(1076003)(66476007)(52116002)(6512007)(110136005)(54906003)(36756003)(5660300002)(8936002)(8676002)(86362001)(6666004)(7416002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWNwb21OWlpFUEMzekd1ekJFalVnQkF2Yk9nOUh0RmNHaEs5Ny9Qd1hWaVEx?=
 =?utf-8?B?c2JKN2RUOG4xbEJwRmNra1VhcFcyYnMwMGExZFFjL1N0dVE5aWhIZWZVZ2RS?=
 =?utf-8?B?N3Q1RXlhc3RleHArOFdHalc1R1RWK2MvMEpjbkVuTk5DajdEMUZ2MDJxVWE4?=
 =?utf-8?B?eERIMjNNUExPa3hjWjR0TEdyTWZXYnNuT25pM0Q4MDdUK21JQjhSM1RlTDFt?=
 =?utf-8?B?Q3pGTzdkZ25SZnp1aFNzeUMrM05Ob0ZRa2R3TFZNcWhhZ3dlWVFwUjNPcGZp?=
 =?utf-8?B?N0ljbEp5Yy82NWF2Q0pXRFNzZXROVVY0L0llVW5WTC9ocUZLcEVJNkxSQ2t3?=
 =?utf-8?B?UUZuR0c3aEg1dFgzbmtGeWx1b09oVzdORjdja1YzbU92aTlUeFRQNWhxclJz?=
 =?utf-8?B?aHVCTlpIYm41UTBaUHhZZ2FjZXlDZm40bjhLMlE0VUJPSW1ETHA3N0owUU9v?=
 =?utf-8?B?L3NaZ2dpS2RtbHVJNFN4KzRCWHdtZUVjQlpSZUU2RE8wV0JsUHl5T1EyL1Qx?=
 =?utf-8?B?VXdrMnN6YURPR1JPSE5tL2luRlpESlFwYXVsVVl2WEI2MlBTZzJBQTBYRGRu?=
 =?utf-8?B?b3MxTmdlVG4zY0tZb0ZUR2MyTCswOU9QS1pyUGdWY0o5Q0I2UW5DZlRVQzEw?=
 =?utf-8?B?NkhCRDVrNm5Xa2xnRlVpV0ZQanhtVmorRW02SVRaMVIwZStjSWlHMFlSZmFB?=
 =?utf-8?B?cWJYYjA0L0t2ZHlwOE8vR2M3azZwZFRBL1JmMUJsZWduY1Fyb20zTW1QQkpx?=
 =?utf-8?B?MFZtL09ab3pTSk9TU2IvU0tiN2RNUTRxK0lpYVExcHkwZlZxRjZDMGswVWZI?=
 =?utf-8?B?MmYzSlljZkJHbURPZDNmbzRBbW8wRnZVdlhxNFBDRW1JaVl1WURKNCtLYVV3?=
 =?utf-8?B?Q0lOSmtrOW1nN1Q0UHpDQTNGenlDak00bFdlV1ZDeWoxWHJOeWxQYVN0NUY3?=
 =?utf-8?B?SkhueVU0YUloaVZWVUFXbGUzRU10ZWNlWHg2OEVVTEtOeHoyMXBrZnYzQkli?=
 =?utf-8?B?WlljcU1NM2c2eWVvU3lVQ0ZWTWc1KzdWQXdicWQvRHIxRTROem5FWndTOGVE?=
 =?utf-8?B?am13dFFnUERyK09WMGd0MlVINTVabWU4TFJndTUxYzVpWXR6Y0FwT1FydkxH?=
 =?utf-8?B?bGRVSU4vQUgxMi9Jd0RMZkx4YXFCTDdTNVZSa1FPdGw0ODhVbDd6NDFYc3hv?=
 =?utf-8?B?dWdGY0hxS1k3V2NZQWdTOVhZTXJhMVVWaStlYi9vOUVTazNKeTdSNVVjR0F1?=
 =?utf-8?B?SWZSdEZNMWtpSUtnWjhvWlN5TGpaVjRpenFLZ1VyRFAyOGRzWmd5dUNGUFhj?=
 =?utf-8?B?UXowSlZkZTJsV2ZDQ1pKeCtCT2tyRVZ5KzBsU212engzUUR5VTkwVzU0TWRk?=
 =?utf-8?B?ZWVBOWtndVNsTStFampObFVROE5hdTBRRk8yNW93RWRoWXh5ZkZOUk1oc2dY?=
 =?utf-8?B?WE91S3VzTXIyVisyeVBnV2lEMzl1UkFPeE8vVEVrOWM5cmlKNldSWTFYT0FL?=
 =?utf-8?B?dUVkOE95WEkzbklvb3FQY3Z5dHFKVjg2Q3AwTnNpdFFkZVhCbGlxRkR5bW4v?=
 =?utf-8?B?MHh2Z2tQdC84MUwrcUE2T1JqYlpPOHdlcUFMeUtIQ2g0dkIvN1RnL2pKcjN6?=
 =?utf-8?B?bHRaQWZ2ZjJabVpaQlBpTUhxVDB1QmZCVkRrZ2xOY0pmQ2IwdERGaFJ2RzNC?=
 =?utf-8?B?UFZPNEQ0Q2orWXhueGt2WXhwZzZZUnEzK0hRdHJjUHlnTjNPdG02SXBFMmRU?=
 =?utf-8?B?K0QxTk9EWURiWmg0YmxKVmVkL2xLS2dGWEtxQUdGdnpkMkVqYWJOV0NBZlpn?=
 =?utf-8?B?YmZPNXYrbDFSbm85UEpmdXFZLzZVYmsxRGxybFNrZzJHUWdkOEdMMTFUWC9k?=
 =?utf-8?B?N1cxMkEwSGhpa3JZSlF5Q3ZSVHd4KzdVbmlJSG5xamRoekdVL1R2MXBORW9r?=
 =?utf-8?B?M0t1TE1UTk83YnJrZ3ZYQjA4ZGcvRzdYaGkvUXhFU2xjZDQyQThzbVZiQ01j?=
 =?utf-8?B?NXZoY0ZnZ0RiTGVkRjRhYzd6YXJXMjAxeFhJMTR0Nmd3UW5rUGxwUWtTZE1E?=
 =?utf-8?B?Yk5YcWxOeUJRdE90VU5VL25KYTdDQ1NKTmZzaEhGL3g4WUtPTCtGUWo2REJR?=
 =?utf-8?Q?3UjR7X1GNrhkblfcry1zTNR3T?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48502543-e9ab-4a7f-0f0f-08db89cf7e45
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 09:47:27.4223
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98HfIkJnvUzbfPH/v6gTYOVZQe3WuIa3X3f84vvDHhlKY925sYAuXfUsOSZdLQXXVot0RLeLfsFL1rbwny6f0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_024739_655744_C232F744 
X-CRM114-Status: GOOD (  17.53  )
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

VGhlcmUgYXJlIG1vcmUgdGhhbiA3MDAgY2FsbHMgdG8gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2ly
cSBtZXRob2QgYW5kCm1vcmUgdGhhbiAxMDAwIGNhbGxzIHRvIGRldm1fcmVxdWVzdF9pcnEgbWV0
aG9kLiBNb3N0IGRyaXZlcnMgb25seQpyZXF1ZXN0IG9uZSBpbnRlcnJ1cHQgcmVzb3VyY2UsIGFu
ZCB0aGVzZSBlcnJvciBtZXNzYWdlcyBhcmUgYmFzaWNhbGx5CnRoZSBzYW1lLiBJZiBlcnJvciBt
ZXNzYWdlcyBhcmUgcHJpbnRlZCBldmVyeXdoZXJlLCBtb3JlIHRoYW4gMjAwMCBsaW5lcwpvZiBj
b2RlIGNhbiBiZSBzYXZlZCBieSByZW1vdmluZyB0aGUgbXNnIGluIHRoZSBkcml2ZXIuCgpBbmQg
dGdseCBwb2ludCBvdXQgdGhhdDoKCiAgSWYgd2UgYWN0dWFsbHkgbG9vayBhdCB0aGUgY2FsbCBz
aXRlcyBvZgogIGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoKSB0aGVuIHRoZSB2YXN0IG1ham9y
aXR5IG9mIHRoZW0gcHJpbnQgbW9yZSBvcgogIGxlc3MgbG91c3kgZXJyb3IgbWVzc2FnZXMuIEEg
cXVpY2sgZ3JlcC9zZWQvYXdrL3NvcnQvdW5pcSByZXZlYWxlZAoKICAgICA1MTkgbWVzc2FnZXMg
dG90YWwgKHRoZXJlIGFyZSBwcm9iYWJseSBtb3JlKQoKICAgICAzNTIgdW5pcXVlIG1lc3NhZ2Vz
CgogICAgIDMyMyB1bmlxdWUgbWVzc2FnZXMgYWZ0ZXIgbG93ZXIgY2FzaW5nCgogICAgICAgICBU
aG9zZSAzMjMgYXJlIG1vc3RseSBqdXN0IHZhcmlhbnRzIG9mIHRoZSBzYW1lIHBhdHRlcm5zIHdp
dGgKICAgICAgICAgc2xpZ2h0IG1vZGlmaWNhdGlvbnMgaW4gZm9ybWF0dGluZyBhbmQgaW5mb3Jt
YXRpb24gcHJvdmlkZWQuCgogICAgIDE4NiBvZiB0aGVzZSBtZXNzYWdlcyBkbyBub3QgZGVsaXZl
ciBhbnkgdXNlZnVsIGluZm9ybWF0aW9uLAogICAgICAgICBlLmcuICJubyBpcnEiLCAiCgogICAg
IFRoZSBtb3N0IHVzZWZ1bCBvbmUgb2YgYWxsIGlzOiAiY291bGQgcmVxdWVzdCB3YWtldXAgaXJx
OiAlZCIKCiAgU28gdGhlcmUgaXMgY2VydGFpbmx5IGFuIGFyZ3VtZW50IHRvIGJlIG1hZGUgdGhh
dCB0aGlzIHBhcnRpY3VsYXIKICBmdW5jdGlvbiBzaG91bGQgcHJpbnQgYSB3ZWxsIGZvcm1hdHRl
ZCBhbmQgaW5mb3JtYXRpdmUgZXJyb3IgbWVzc2FnZS4KCiAgSXQncyBub3QgYSBnZW5lcmFsIGFs
bG9jYXRvciBsaWtlIGttYWxsb2MoKS4gSXQncyBzcGVjaWFsaXplZCBhbmQgaW4gdGhlCiAgdmFz
dCBtYWpvcml0eSBvZiBjYXNlcyBmYWlsaW5nIHRvIHJlcXVlc3QgdGhlIGludGVycnVwdCBjYXVz
ZXMgdGhlCiAgZGV2aWNlIHByb2JlIHRvIGZhaWwuIFNvIGhhdmluZyBwcm9wZXIgYW5kIGNvbnNp
c3RlbnQgaW5mb3JtYXRpb24gd2h5CiAgdGhlIGRldmljZSBjYW5ub3QgYmUgdXNlZCBfaXNfIHVz
ZWZ1bC4KClNvIGNvbnZlcnQgdG8gdXNlIGRldm1fcmVxdWVzdCpfaXJxX3Byb2JlKCkgQVBJLCB3
aGljaCBlbnN1cmUgdGhhdCBhbGwKZXJyb3IgaGFuZGxpbmcgYnJhbmNoZXMgcHJpbnQgZXJyb3Ig
aW5mb3JtYXRpb24uCgpJbiB0aGlzIHdheSwgd2hlbiB0aGlzIGZ1bmN0aW9uIGZhaWxzLCB0aGUg
dXBwZXItbGF5ZXIgZnVuY3Rpb25zIGNhbgpkaXJlY3RseSByZXR1cm4gYW4gZXJyb3IgY29kZSB3
aXRob3V0IG1pc3NpbmcgZGVidWdnaW5nIGluZm9ybWF0aW9uLgpPdGhlcndpc2UsIHRoZSBlcnJv
ciBtZXNzYWdlIHdpbGwgYmUgcHJpbnRlZCByZWR1bmRhbnRseSBvciBtaXNzaW5nLgoKQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgpDYzogIlV3ZSBLbGVpbmUtS8O2bmlnIiA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgpDYzogSm9uYXRoYW4gQ2FtZXJvbiA8Sm9uYXRoYW4uQ2FtZXJv
bkBIdWF3ZWkuY29tPgpDYzogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gIDxhbmdlbG9naW9h
Y2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkg
PGZyYW5rLmxpQHZpdm8uY29tPgpBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KLS0tCiBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgMTEgKysrKyst
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKaW5kZXggNzcyMzFhOWQyOGZmLi4xMTA2MWY2ZWYz
MjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKKysrIGIv
ZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwpAQCAtMTU3NywxMyArMTU3NywxMiBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIAkJCQkiZmFpbGVkIHRvIHJlZ2lzdGVyIHNlbnNvclslZF0uXG4iLCBpKTsKIAl9
CiAKLQllcnJvciA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoJnBkZXYtPmRldiwgaXJxLCBO
VUxMLAotCQkJCQkgICZyb2NrY2hpcF90aGVybWFsX2FsYXJtX2lycV90aHJlYWQsCi0JCQkJCSAg
SVJRRl9PTkVTSE9ULAotCQkJCQkgICJyb2NrY2hpcF90aGVybWFsIiwgdGhlcm1hbCk7CisJZXJy
b3IgPSBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxX3Byb2JlKCZwZGV2LT5kZXYsIGlycSwgTlVM
TCwKKwkJCQkJCSZyb2NrY2hpcF90aGVybWFsX2FsYXJtX2lycV90aHJlYWQsCisJCQkJCQlJUlFG
X09ORVNIT1QsCisJCQkJCQkicm9ja2NoaXBfdGhlcm1hbCIsIHRoZXJtYWwsICJ0c2FkYyIpOwog
CWlmIChlcnJvcikKLQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgZXJyb3IsCi0J
CQkJICAgICAiZmFpbGVkIHRvIHJlcXVlc3QgdHNhZGMgaXJxLlxuIik7CisJCXJldHVybiBlcnJv
cjsKIAogCXRoZXJtYWwtPmNoaXAtPmNvbnRyb2wodGhlcm1hbC0+cmVncywgdHJ1ZSk7CiAKLS0g
CjIuMzkuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
